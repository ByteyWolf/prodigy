local RandomNameGenerator = require "../Util/RNG"
local TypeHandler = require "@self/SpecialValueHandlers"
local Base93 = require "@self/base93"
local Zlib = require "@self/zlib"
local PBD = require "@self/ProgrammingBlocksData"

local Visual4 = {}

export type VisualBlock = {
    Type: string,
    Name: string,
    Position: Vector2,
    ConnectedBlocks: {string},
    ElseBlock: string,
    Inputs: {Input},
    Outputs: {Output}
}

export type Input = {
    BlockParent: VisualBlock,
    InputName: string,
    InputValue: string,
    InputType: string, -- could be "Variable"
}

export type Output = {
    OutputName: string,
    OutputValue: string
}

function Visual4.CreateBlock(Type: string, Name: string?): VisualBlock
if not Name then
    Name = RandomNameGenerator.generateRandomBlockName()
    end
    local block:VisualBlock = {
        Type = Type,
        Name = Name,
        Position = Vector2.new(0, 0),
        ConnectedBlocks = {},
        ElseBlock = nil
    }
    setmetatable(block, {__index = Visual4})
    return block
    end

    function Visual4:CreateInput(InputName: string, InputValue: string, InputType: string?): Input
    local input:Input = {
        BlockParent = self,
        InputName = InputName,
        InputValue = InputValue,
        InputType = InputType
    }
    return input
    end

    function Visual4:CreateOutput(OutputName: string, OutputValue: string)
    local output:Output = {
        OutputName = OutputName,
        OutputValue = OutputValue
    }
    return output
    end

    function Visual4:ConnectBlock(Block: VisualBlock)
    table.insert(self.ConnectedBlocks, Block.Name)
    end

    function Visual4:AddComponent(component: Input | Output)
    if component.BlockParent then
        table.insert(self.Inputs, component)
        else
            table.insert(self.Outputs, component)
            end
            end

            -- not tested
            function Visual4.SerializeBlocks(Blocks: {VisualBlock})
            local sepmaj = string.char(0x1a)
            local sepmin = string.char(0x1b)
            local data = `{sepmaj}{sepmaj}Editor{sepmaj}CameraPosition{sepmin}0,0{sepmaj}CameraZoom{sepmin}0.1C2`
            for _, block in Blocks do
                local posx, posy = TypeHandler.number(block.Position.X), TypeHandler.number(block.Position.Y)
                data ..= `{sepmaj}{sepmaj}Block{sepmaj}Type{sepmin}{block.Type}{sepmaj}Name{sepmin}{block.Name}{sepmaj}VisualPosition{sepmin}{posx},{posy}`
                data ..= `{sepmaj}ChildBlocks{sepmin}{table.concat(block.ConnectedBlocks, ",")}{sepmaj}ElseChildBlock{sepmin}{block.ElseBlock or 'nil'}{sepmaj}Inputs`

                local BlockInfo = PBD.BlocksList[block.Type]
                if not BlockInfo then error("invalid block name") end
                    local InputData = BlockInfo.Inputs

                    for _, input in block.Inputs do
                        -- TODO
                        end
                        -- TODO verify that lengths of PBD inputs and block inputs match to prevent problems later on
                        end
                        end

                        return Visual4
