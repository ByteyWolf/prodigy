--!native

--[[
explanation

base93 pairs can represent values up to 93^2-1 (0 to 8648)
values 457 to 8196 (0x1FFF) can fit within 13 bits
values 0 to 456 can be encoded using 14 bits

changes

- use local variables instead of globals
- optimize bitwise and arithmetic logic to not use function calls (floor divide and modulus)
- shift encoding table index to start at 0 as to not need to compute offset at runtime
- remove peculiar metatable OOP and use local variables instead
- combine everything into two singular functions, encode and decode
- precompute powers of 2 for O(1) lookup
- precompute byte to char lookup
]]

local concat = table.concat
local byte, char = string.byte, string.char


local encode_lookup = {
    [0] = "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
    "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "#", "$",
    "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=",
    ">", "?", "@", "[", "]", "^", "_", "`", "{", "|", "}", "~", " "
}
local decode_lookup = {}

for c = 0, 255 do
    decode_lookup[c] = 0xFF; -- unknown character
end

for i = 0, #encode_lookup do
    decode_lookup[byte(encode_lookup[i])] = i;
end;


local powers_of_2 = {}
for i = 0, 30 do
    powers_of_2[i] = 2 ^ i
end


local char_lookup = {}
for i = 0, 255 do
    char_lookup[i] = char(i)
end


local module = {}


function module.encode(str)
    local bit_queue = 0;
    local bit_count = 0;
    local out = {}
    local out_i = 1

    for char_i = 1, #str do
        bit_queue += byte(str, char_i) * powers_of_2[bit_count]
        bit_count += 8

        while bit_count > 13 do
            local value = bit_queue % 0x2000
            if value > 456 then -- fits within 13 bits?
                bit_queue //= 0x2000
                bit_count -= 13
            else -- outside 13-bit range, use 14
                value = bit_queue % 0x4000
                bit_queue //= 0x4000
                bit_count -= 14
            end
            out[out_i] = encode_lookup[value % 93]
            out_i += 1
            out[out_i] = encode_lookup[value // 93]
            out_i += 1
        end
    end

    if bit_count > 0 then
        out[out_i] = encode_lookup[bit_queue % 93]
        if bit_count > 7 or bit_queue > 92 then
            out_i += 1
            out[out_i] = encode_lookup[bit_queue // 93]
        end
    end

    return concat(out)
end

function module.decode(str)
    local bit_queue = 0;
    local bit_count = 0;
    local out = {}
    local out_i = 1

    local str_len = #str
    local pairs_limit = str_len // 2 * 2

    for char_i = 1, pairs_limit, 2 do
        local data_left, data_right = byte(str, char_i, char_i + 1)
        data_left, data_right = decode_lookup[data_left], decode_lookup[data_right]

        if data_left == 0xFF or data_right == 0xFF then
            error("malformed base93 data stream")
        end

        local value = data_left + data_right * 93
        bit_queue += value * powers_of_2[bit_count]
        bit_count += value % 0x2000 > 456 and 13 or 14

        while bit_count > 7 do
            out[out_i] = char_lookup[bit_queue % 0x100]
            out_i += 1
            bit_queue //= 0x100
            bit_count -= 8
        end
    end

    if pairs_limit < str_len then
        local data = decode_lookup[byte(str, str_len)]
        
        if data == 0xFF then
            error("malformed base93 data stream")
        end

        out[out_i] = char_lookup[bit_queue + data * powers_of_2[bit_count]]
    end

    return concat(out)
end

return module