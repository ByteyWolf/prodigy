local Stream = {}

local STREAM_SOURCE = 1
local STREAM_POINTER = 2
local STREAM_LINE = 3
local STREAM_COL = 4

function Stream.new(source:string)
	local streamNew = {}
	streamNew[STREAM_SOURCE] = source
	streamNew[STREAM_POINTER] = 1
	streamNew[STREAM_LINE] = 1
	streamNew[STREAM_COL] = 1
	setmetatable(streamNew, {__index = Stream})
	return streamNew
end

function Stream:read(count:number)
	local pointer = self[STREAM_POINTER]
	self[STREAM_POINTER] += count
	local data = string.sub(self[STREAM_SOURCE], pointer, self[STREAM_POINTER] - 1)
	for i = 1, count do
		local char = string.sub(data, i, i)
		if char == "\n" then
			self[STREAM_LINE] += 1
			self[STREAM_COL] = 1
		else
			self[STREAM_COL] += 1
		end
	end
	return data
end

function Stream:rewind(count:number)
	self[STREAM_POINTER] -= count
	local data = string.sub(self[STREAM_SOURCE], self[STREAM_POINTER], self[STREAM_POINTER] + count - 1)
	for i = 1, count do
		local char = string.sub(data, i, i)
		if char == "\n" then
			self[STREAM_LINE] -= 1
			self[STREAM_COL] = 1
		else
			self[STREAM_COL] -= 1
		end
	end
	return data
end

function Stream:getPtr()
	return self[STREAM_POINTER], self[STREAM_LINE], self[STREAM_COL]
end

return Stream