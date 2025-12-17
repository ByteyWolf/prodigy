local numberPrecision = 1000

local function toBase16Number(num: number?): string
if not num then
    return "0"
    end

    num = math.round(num * numberPrecision) / numberPrecision
    local numFloored = math.floor(num)

    if numFloored == num then
        -- Int
        if num >= 0 then
            return string.format("%X", num)
            else
                return string.format("-%X", -num)
                end
                else
                    -- Float
                    local concatTable = {}
                    local decimal = math.round(num * numberPrecision % numberPrecision)

                    if num < 0 then
                        decimal = numberPrecision - decimal
                        table.insert(concatTable, "-")
                        table.insert(concatTable, string.format("%X", -numFloored-1))
                        else
                            table.insert(concatTable, string.format("%X", numFloored))
                            end

                            table.insert(concatTable, ".")

                            table.insert(concatTable, string.format("%X", decimal))

                            return table.concat(concatTable)
                            end
                            end

                            local module = {
                                ["BrickColor"] = function(In:BrickColor)
                                return string.format("%X", In.Number)
                                end,
                                ["Instance"] = function(In:Instance)
                                return "game." .. In:GetFullName()
                                end,
                                ["number"] = function(In:number)
                                return toBase16Number(In)
                                end,
                                ["bool"] = function(In:boolean)
                                if In == true then
                                    return "1"
                                    end
                                    return "0"
                                    end,
                            }

                            return module
