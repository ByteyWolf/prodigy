--!strict
local module = {}
local BlocksList = {
    ["FindFirstChild"] = {
        Inputs = {
            ["Parent"] = {
                VariableType = "Object",
            },
            ["ChildName"] = {
                VariableType = "String",
            },
            ["Recursive"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["HideLeaderboard"] = {
        Inputs = {
            ["Hide"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["IsStudio"] = {
        Inputs = {},
        Outputs = {
            "Answer",
        },
    },
    ["TeleportPlayerToPosition"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Model", "Player"},
            },
            ["Position"] = {
                VariableType = "Vector3",
            },
            ["Rotation"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {},
    },
    ["RemoteRecieveClient2"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
        },
        Outputs = {
            "TUPLE_Parameters",
        },
    },
    ["AnyPropertyChanged"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Property",
            "NewValue",
        },
    },
    ["ActivateTool"] = {
        Inputs = {
            ["Tool"] = {
                VariableType = "Object",
                AllowedTypes = {"Tool"},
            },
        },
        Outputs = {},
    },
    ["CloneObject"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
            ["Parent"] = {
                VariableType = "Object",
                AllowedTypes = {"Instance", "nil"},
            },
        },
        Outputs = {
            "NewObject",
        },
    },
    ["DestroyObject"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {},
    },
    ["TableRemove"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
            },
            ["Position"] = {
                VariableType = "Number",
            },
        },
        Outputs = {},
    },
    ["IsTouching"] = {
        Inputs = {
            ["Part1"] = {
                VariableType = "Object",
            },
            ["Part2"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "IsTouching",
        },
    },
    ["SaveInstance"] = {
        Inputs = {
            ["Model"] = {
                VariableType = "Object",
                AllowedTypes = {"Object", "nil"},
            },
            ["Key"] = {
                VariableType = "String",
                AllowedTypes = {"Any"},
            },
            ["Shared"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Success",
        },
    },
    ["DumpMemory"] = {
        Inputs = {},
        Outputs = {},
    },
    ["GUIMouseMoved"] = {
        Inputs = {
            ["GUI"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiObject"},
            },
        },
        Outputs = {},
    },
    ["ToWorldSpace1"] = {
        Inputs = {
            ["CFrame"] = {
                VariableType = "CFrame",
            },
            ["ObjectCFrame"] = {
                VariableType = "CFrame",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["BreakLoop"] = {
        Inputs = {},
        Outputs = {},
    },
    ["Color3ToHSV"] = {
        Inputs = {
            ["Color3"] = {
                VariableType = "Color3",
            },
        },
        Outputs = {
            "Hue",
            "Saturation",
            "Value",
        },
    },
    ["ConstructCFrame"] = {
        Inputs = {
            ["Position"] = {
                VariableType = "Vector3",
            },
            ["Rotation"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "CFrame",
        },
    },
    ["CreateTable"] = {
        Inputs = {},
        Outputs = {
            "TableVariable",
        },
    },
    ["Exponentiation"] = {
        Inputs = {
            ["Number1"] = {
                VariableType = "Number",
            },
            ["Number2"] = {
                VariableType = "Number",
                DefaultValue = 2,
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["WhileLoop2"] = {
        Inputs = {
            ["Value 1"] = {
                VariableType = "Any",
            },
            ["ComparisonType"] = {
                VariableType = "Choice",
                Choices = {"==", "~=", ">", "<", "<=", ">="},
            },
            ["Value 2"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["ContinueLoop"] = {
        Inputs = {},
        Outputs = {},
    },
    ["BindableFunctionOnInvoke"] = {
        Inputs = {
            ["BindableFunction"] = {
                VariableType = "Object",
                AllowedTypes = {"BindableFunction"},
            },
        },
        Outputs = {
            "TUPLE_Parameters",
        },
    },
    ["TypeOf"] = {
        Inputs = {
            ["Variable"] = {
                VariableType = "Any",
            },
        },
        Outputs = {
            "Type",
        },
    },
    ["GUIRightMouseButtonDown"] = {
        Inputs = {
            ["GUIButton"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiButton"},
            },
        },
        Outputs = {},
    },
    ["RegisterCollisionGroup"] = {
        Inputs = {
            ["GroupName"] = {
                VariableType = "String",
            },
            ["Unregister"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {},
    },
    ["HasGamepass"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player", "Model"},
            },
            ["GamepassId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["DialogChoiceSelected"] = {
        Inputs = {
            ["Dialog"] = {
                VariableType = "Object",
                AllowedTypes = {"Dialog"},
            },
        },
        Outputs = {
            "Player",
            "Choice",
        },
    },
    ["RightMouseUpLocal"] = {
        Inputs = {},
        Outputs = {},
    },
    ["MutePlayer"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["Mute"] = {
                VariableType = "Bool",
                DefaultValue = true,
            },
        },
        Outputs = {},
    },
    ["GSubString"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
            ["Pattern"] = {
                VariableType = "String",
            },
            ["Replacement"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["SetPartPhysicalProperties"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart"},
            },
            ["Elasticity"] = {
                VariableType = "Number",
                DefaultValue = 0.5,
            },
            ["Friction"] = {
                VariableType = "Number",
                DefaultValue = 0.3,
            },
            ["Density"] = {
                VariableType = "Number",
                DefaultValue = 0.7,
            },
            ["ElasticityWeight"] = {
                VariableType = "Number",
                DefaultValue = 1,
            },
            ["FrictionWeight"] = {
                VariableType = "Number",
                DefaultValue = 1,
            },
        },
        Outputs = {},
    },
    ["ReceiveChatMessage"] = {
        Inputs = {
            ["Channel"] = {
                VariableType = "Object",
                AllowedTypes = {"TextChannel"},
            },
        },
        Outputs = {
            "TextChatMessage",
        },
    },
    ["GUILeftMouseButtonDown"] = {
        Inputs = {
            ["GUIButton"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiButton"},
            },
        },
        Outputs = {},
    },
    ["AND"] = {
        Inputs = {
            ["A"] = {
                VariableType = "Bool",
            },
            ["B"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["ANDAny"] = {
        Inputs = {
            ["A"] = {
                VariableType = "Any",
            },
            ["B"] = {
                VariableType = "Any",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["SetMouseTargetFilterLocal"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {},
    },
    ["InsertModel"] = {
        Inputs = {
            ["ID"] = {
                VariableType = "Number",
            },
            ["Parent"] = {
                VariableType = "Object",
                AllowedTypes = {"Object", "nil"},
            },
        },
        Outputs = {
            "Success",
            "LoadedModel",
        },
    },
    ["ModelInserted"] = {
        Inputs = {
        },
        Outputs = {
            "SourceScript",
            "ID",
            "Success",
            "LoadedModel"
        },
    },
    ["FindPartsInRegion"] = {
        Inputs = {
            ["CFrame"] = {
                VariableType = "CFrame",
            },
            ["Size"] = {
                VariableType = "Vector3",
            },
            ["FilterType"] = {
                VariableType = "Choice",
                Choices = {"Blacklist", "Whitelist"},
            },
            ["FilterDescendantsTable"] = {
                VariableType = "Table",
            },
            ["MaxParts"] = {
                VariableType = "Number",
                DefaultValue = 20,
            },
        },
        Outputs = {
            "PartsTable",
        },
    },
    ["BindableRecieve2"] = {
        Inputs = {
            ["BindableEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"BindableEvent"},
            },
        },
        Outputs = {
            "TUPLE_Parameters",
        },
    },
    ["If"] = {
        Inputs = {
            ["Value 1"] = {
                VariableType = "Any",
            },
            ["ComparisonType"] = {
                VariableType = "Choice",
                Choices = {"==", "~=", ">", "<", "<=", ">="},
            },
            ["Value 2"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["KickPlayer"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["Reason"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["BindableRecieve"] = {
        Inputs = {
            ["BindableEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"BindableEvent"},
            },
        },
        Outputs = {
            "Parameter1",
            "Parameter2",
            "Parameter3",
            "Parameter4",
            "Parameter5",
        },
    },
    ["FromAxisAngle"] = {
        Inputs = {
            ["v"] = {
                VariableType = "number",
            },
            ["r"] = {
                VariableType = "number",
            },
        },
        Outputs = {
            "CFrame",
        },
    },
    ["LoopThroughTable"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
            },
        },
        Outputs = {
            "Index",
            "Value",
        },
    },
    ["Warn"] = {
        Inputs = {
            ["Text"] = {
                VariableType = "String",
                AllowedTypes = {"Any"},
            },
        },
        Outputs = {},
    },
    ["DescendantAdded"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Descendant",
        },
    },
    ["Print"] = {
        Inputs = {
            ["Text"] = {
                VariableType = "String",
                AllowedTypes = {"Any"},
            },
        },
        Outputs = {},
    },
    ["GetChildren"] = {
        Inputs = {
            ["Parent"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "ChildrenTable",
        },
    },
    ["GetLength"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Length",
        },
    },
    ["ToolEquipped"] = {
        Inputs = {
            ["Tool"] = {
                VariableType = "Object",
                AllowedTypes = {"Tool"},
            },
        },
        Outputs = {},
    },
    ["LoadVariable"] = {
        Inputs = {
            ["Key"] = {
                VariableType = "String",
                AllowedTypes = {"Any"},
            },
            ["Shared"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Success",
            "LoadedData",
        },
    },
    ["ConstructVector2"] = {
        Inputs = {
            ["X"] = {
                VariableType = "Number",
            },
            ["Y"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Vector2",
        },
    },
    ["TweenGuiPosition"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiObject"},
            },
            ["Position"] = {
                VariableType = "UDim2",
            },
            ["Time"] = {
                VariableType = "Number",
            },
            ["EasingStyle"] = {
                VariableType = "Choice",
                Choices = {"Linear", "Sine", "Back", "Quad", "Quart", "Quint", "Bounce", "Elastic", "Exponential", "Circular", "Cubic"},
            },
            ["EasingDirection"] = {
                VariableType = "Choice",
                Choices = {"In", "Out", "InOut"},
            },
        },
        Outputs = {},
    },
    ["IsAncestorOf"] = {
        Inputs = {
            ["Descendant"] = {
                VariableType = "Object",
            },
            ["Ancestor"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "OutputValue",
        },
    },
    ["ResumeSound"] = {
        Inputs = {
            ["Sound"] = {
                VariableType = "Object",
                AllowedTypes = {"Sound"},
            },
        },
        Outputs = {},
    },
    ["RemoteRecieveClient"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
        },
        Outputs = {
            "Parameter1",
            "Parameter2",
            "Parameter3",
            "Parameter4",
            "Parameter5",
        },
    },
    ["LoopThroughChildren"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Child",
        },
    },
    ["ToEulerAnglesXYZ"] = {
        Inputs = {
            ["CFrame"] = {
                VariableType = "CFrame",
            },
        },
        Outputs = {
            "rx",
            "ry",
            "rz",
        },
    },
    ["CombineNumberWithString"] = {
        Inputs = {
            ["Number"] = {
                VariableType = "Number",
            },
            ["String"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Combined",
        },
    },
    ["RemoteFunctionOnInvokeClient"] = {
        Inputs = {
            ["RemoteFunction"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteFunction"},
            },
        },
        Outputs = {
            "TUPLE_Parameters",
        },
    },
    ["SetVariable"] = {
        Inputs = {
            ["VariableName"] = {
                VariableType = "String",
            },
            ["Value"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["CheckIfPlayerIsBanned"] = {
        Inputs = {
            ["UserId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["OsClock"] = {
        Inputs = {},
        Outputs = {
            "Answer",
        },
    },
    ["InsertRetrostudioAvatar"] = {
        Inputs = {
            ["ID"] = {
                VariableType = "Number",
            },
            ["CFrame"] = {
                VariableType = "CFrame",
            },
        },
        Outputs = {
            "Model",
        },
    },
    ["TweenGuiSize"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiObject"},
            },
            ["Size"] = {
                VariableType = "UDim2",
            },
            ["Time"] = {
                VariableType = "Number",
            },
            ["EasingStyle"] = {
                VariableType = "Choice",
                Choices = {"Linear", "Sine", "Back", "Quad", "Quart", "Quint", "Bounce", "Elastic", "Exponential", "Circular", "Cubic"},
            },
            ["EasingDirection"] = {
                VariableType = "Choice",
                Choices = {"In", "Out", "InOut"},
            },
        },
        Outputs = {},
    },
    ["WhileLoop3"] = {
        Inputs = {
            ["Value 1"] = {
                VariableType = "Any",
            },
            ["ComparisonType"] = {
                VariableType = "Choice",
                Choices = {"==", "~=", ">", "<", "<=", ">="},
            },
            ["Value 2"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["ForLoop2"] = {
        Inputs = {
            ["Initial"] = {
                VariableType = "Number",
                DefaultValue = 1,
            },
            ["Increment"] = {
                VariableType = "Number",
                DefaultValue = 1,
            },
            ["Maximum"] = {
                VariableType = "Number",
                DefaultValue = 10,
            },
        },
        Outputs = {
            "Place",
        },
    },
    ["StopSound"] = {
        Inputs = {
            ["Sound"] = {
                VariableType = "Object",
                AllowedTypes = {"Sound"},
            },
        },
        Outputs = {},
    },
    ["SetMouseIconLocal"] = {
        Inputs = {
            ["Icon"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["HumanoidFreeFalling"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {
            "Active",
        },
    },
    ["RandomBrickColor"] = {
        Inputs = {},
        Outputs = {
            "BrickColor",
        },
    },
    ["Color3ToBrickColor"] = {
        Inputs = {
            ["Color3"] = {
                VariableType = "Color3",
            },
        },
        Outputs = {
            "BrickColor",
        },
    },
    ["RotationBetweenPoints"] = {
        Inputs = {
            ["Point 1"] = {
                VariableType = "Vector3",
            },
            ["Point 2"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "RotationVector3",
        },
    },
    ["Addition"] = {
        Inputs = {
            ["Number1"] = {
                VariableType = "Number",
                AllowedTypes = {"number", "Vector2", "Vector3", "CFrame"},
            },
            ["Number2"] = {
                VariableType = "Number",
                AllowedTypes = {"number", "Vector2", "Vector3", "CFrame"},
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["SplitCFrame"] = {
        Inputs = {
            ["CFrame"] = {
                VariableType = "CFrame",
            },
        },
        Outputs = {
            "Position",
            "Rotation",
        },
    },
    ["IsDescendantOf"] = {
        Inputs = {
            ["Ancestor"] = {
                VariableType = "Object",
            },
            ["Descendant"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "OutputValue",
        },
    },
    ["ExecuteFunction"] = {
        Inputs = {
            ["Function"] = {
                VariableType = "Function",
                DefaultValue = "",
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {
            "TUPLE_ReturnedValues",
        },
    },
    ["GetModelBoundingBox"] = {
        Inputs = {
            ["Model"] = {
                VariableType = "Object",
                AllowedTypes = {"Model"},
            },
        },
        Outputs = {
            "Position",
            "Rotation",
            "Size",
        },
    },
    ["GetFullName"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "FullName",
        },
    },
    ["SplitNumberRange"] = {
        Inputs = {
            ["NumberRange"] = {
                VariableType = "NumberRange",
            },
        },
        Outputs = {
            "Min",
            "Max",
        },
    },
    ["GetServerTimeNow"] = {
        Inputs = {},
        Outputs = {
            "Answer",
        },
    },
    ["ChildRemoved"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Child",
        },
    },
    ["HumanoidSeated"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {
            "Active",
            "Seat",
        },
    },
    ["HSVToColor3"] = {
        Inputs = {
            ["Hue"] = {
                VariableType = "Number",
            },
            ["Saturation"] = {
                VariableType = "Number",
            },
            ["Value"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Color3",
        },
    },
    ["HumanoidRunning"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {
            "Speed",
        },
    },
    ["ToolUnequipped"] = {
        Inputs = {
            ["Tool"] = {
                VariableType = "Object",
                AllowedTypes = {"Tool"},
            },
        },
        Outputs = {},
    },
    ["ToStringAny"] = {
        Inputs = {
            ["Input"] = {
                VariableType = "Any",
            },
        },
        Outputs = {
            "String",
        },
    },
    ["DisconnectEvent"] = {
        Inputs = {
            ["EventConnection"] = {
                VariableType = "EventConnection",
            },
        },
        Outputs = {},
    },
    ["SetJoinAfterMoveInstance"] = {
        Inputs = {
            ["Instance"] = {
                VariableType = "Object",
                AllowedTypes = {"PVInstance"},
            },
        },
        Outputs = {},
    },
    ["Vector3Dot"] = {
        Inputs = {
            ["VectorA"] = {
                VariableType = "Vector3",
            },
            ["VectorB"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["RenderStepped"] = {
        Inputs = {},
        Outputs = {
            "deltaTime",
        },
    },
    ["PreSimulation"] = {
        Inputs = {},
        Outputs = {
            "deltaTime",
        },
    },
    ["SetNetworkOwner"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart"},
            },
            ["Player"] = {
                VariableType = "Any",
                AllowedTypes = {"Player", "nil"},
            },
        },
        Outputs = {},
    },
    ["GetUserIdFromNameAsync"] = {
        Inputs = {
            ["Username"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "UserId",
        },
    },
    ["PlayerRemoving"] = {
        Inputs = {},
        Outputs = {
            "Player",
        },
    },
    ["LoopThroughDescendants"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Descendant",
        },
    },
    ["TableInsert"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
            },
            ["Position"] = {
                VariableType = "Number",
            },
            ["Value"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["FilterString"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["Spawn"] = {
        Inputs = {
            ["Function"] = {
                VariableType = "Function",
                DefaultValue = "",
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {},
    },
    ["OR"] = {
        Inputs = {
            ["A"] = {
                VariableType = "Bool",
            },
            ["B"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["ORAny"] = {
        Inputs = {
            ["A"] = {
                VariableType = "Any",
            },
            ["B"] = {
                VariableType = "Any",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["ReverseMortalityEngine"] = {
        Inputs = {},
        Outputs = {},
    },
    ["LoadCharacter"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {},
    },
    ["ShowPermissibleJoints"] = {
        Inputs = {},
        Outputs = {},
    },
    ["MathPi"] = {
        Inputs = {},
        Outputs = {
            "Pi",
        },
    },
    ["BodyPositionReachedTarget"] = {
        Inputs = {
            ["BodyPosition"] = {
                VariableType = "Object",
                AllowedTypes = {"BodyPosition"},
            },
        },
        Outputs = {},
    },
    ["Substring"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
            ["StartPoint"] = {
                VariableType = "Number",
            },
            ["EndPoint"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["SplitVector3"] = {
        Inputs = {
            ["Vector3"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "X",
            "Y",
            "Z",
        },
    },
    ["ClickDetectorInteraction"] = {
        Inputs = {
            ["ClickDetector"] = {
                VariableType = "Object",
                AllowedTypes = {"ClickDetector"},
            },
            ["InteractionType"] = {
                VariableType = "Choice",
                Choices = {"Clicked", "Right Clicked", "Hover Enter", "Hover Leave"},
            },
        },
        Outputs = {
            "Player",
        },
    },
    ["SetCameraPositionLocal"] = {
        Inputs = {
            ["Position"] = {
                VariableType = "Vector3",
            },
            ["Rotation"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {},
    },
    ["GetNameFromUserIdAsync"] = {
        Inputs = {
            ["UserId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Username",
        },
    },
    ["Assert"] = {
        Inputs = {
            ["Value"] = {
                VariableType = "Any",
            },
            ["ErrorMessage"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["PropertyChanged"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
            ["Property"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "NewValue",
        },
    },
    ["Vector3Cross"] = {
        Inputs = {
            ["VectorA"] = {
                VariableType = "Vector3",
            },
            ["VectorB"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GetObjectProperty"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
                AllowedTypes = {"Object"},
            },
            ["Property"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Value",
        },
    },
    ["EmitParticle"] = {
        Inputs = {
            ["ParticleCount"] = {
                VariableType = "Number",
            },
            ["ParticleEmitter"] = {
                VariableType = "Object",
                AllowedTypes = {"ParticleEmitter"},
            },
        },
        Outputs = {},
    },
    ["IsA"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
            ["Class"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GetCameraPositionLocal"] = {
        Inputs = {},
        Outputs = {
            "Position",
            "Rotation",
        },
    },
    ["RemoteFireAllClients"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
            ["Parameter1"] = {
                VariableType = "Any",
            },
            ["Parameter2"] = {
                VariableType = "Any",
            },
            ["Parameter3"] = {
                VariableType = "Any",
            },
            ["Parameter4"] = {
                VariableType = "Any",
            },
            ["Parameter5"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["PromptGamepassPurchase"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["GamepassId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {},
    },
    ["AbortRocketPropulsion"] = {
        Inputs = {
            ["RocketPropulsion"] = {
                VariableType = "Object",
                AllowedTypes = {"RocketPropulsion"},
            },
        },
        Outputs = {},
    },
    ["KeyUpLocal"] = {
        Inputs = {
            ["Key"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["Division"] = {
        Inputs = {
            ["Number1"] = {
                VariableType = "Number",
                AllowedTypes = {"number", "Vector2", "Vector3"},
            },
            ["Number2"] = {
                VariableType = "Number",
                AllowedTypes = {"number", "Vector2", "Vector3"},
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GetConnectedParts"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "PartsTable",
        },
    },
    ["GUILeftMouseButtonUp"] = {
        Inputs = {
            ["GUIButton"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiButton"},
            },
        },
        Outputs = {},
    },
    ["FunctionReturn"] = {
        Inputs = {
            ["Returns"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {},
    },
    ["TweenObjectProperty"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
                AllowedTypes = {"Instance"},
            },
            ["Property"] = {
                VariableType = "String",
            },
            ["Value"] = {
                VariableType = "Any",
            },
            ["Time"] = {
                VariableType = "Number",
            },
            ["EasingStyle"] = {
                VariableType = "Choice",
                Choices = {"Linear", "Sine", "Back", "Quad", "Quart", "Quint", "Bounce", "Elastic", "Exponential", "Circular", "Cubic"},
            },
            ["EasingDirection"] = {
                VariableType = "Choice",
                Choices = {"In", "Out", "InOut"},
            },
            ["RepeatCount"] = {
                VariableType = "Number",
            },
            ["Reverses"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {},
    },
    ["GetMouseTargetPartLocal"] = {
        Inputs = {},
        Outputs = {
            "TargetPart",
        },
    },
    ["GUIMouseWheelForward"] = {
        Inputs = {
            ["GUI"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiObject"},
            },
        },
        Outputs = {},
    },
    ["HumanoidJumping"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {
            "Active",
        },
    },
    ["CheckToolEquipped"] = {
        Inputs = {
            ["Tool"] = {
                VariableType = "Object",
                AllowedTypes = {"Tool"},
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["PromptGamepassPurchaseFinished"] = {
        Inputs = {},
        Outputs = {
            "Player",
            "GamepassId",
            "Purchased",
        },
    },
    ["ForLoop"] = {
        Inputs = {
            ["Initial"] = {
                VariableType = "Number",
                DefaultValue = 1,
            },
            ["Increment"] = {
                VariableType = "Number",
                DefaultValue = 1,
            },
            ["Maximum"] = {
                VariableType = "Number",
                DefaultValue = 10,
            },
        },
        Outputs = {
            "Place",
        },
    },
    ["ExplosionHit"] = {
        Inputs = {
            ["Explosion"] = {
                VariableType = "Object",
                AllowedTypes = {"Explosion"},
            },
        },
        Outputs = {
            "Part",
            "Distance",
        },
    },
    ["LeftMouseUp"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {},
    },
    ["GetTouchingParts"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "PartsTable",
        },
    },
    ["TableFind"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
            },
            ["Value"] = {
                VariableType = "Any",
            },
            ["Init"] = {
                VariableType = "Number",
                DefaultValue = 1,
            },
        },
        Outputs = {
            "Key",
        },
    },
    ["PlayerAdded"] = {
        Inputs = {},
        Outputs = {
            "Player",
        },
    },
    ["DialogChat"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart", "Model"},
            },
            ["Message"] = {
                VariableType = "String",
            },
            ["Color"] = {
                VariableType = "Choice",
                Choices = {"Blue", "Green", "Red"},
            },
        },
        Outputs = {},
    },
    ["SplitColor3"] = {
        Inputs = {
            ["Color3"] = {
                VariableType = "Color3",
            },
        },
        Outputs = {
            "R",
            "G",
            "B",
        },
    },
    ["LeftMouseDownLocal"] = {
        Inputs = {},
        Outputs = {},
    },
    ["PartTouched"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart"},
            },
        },
        Outputs = {
            "otherPart",
        },
    },
    ["SetVariable1"] = {
        Inputs = {
            ["Value"] = {
                VariableType = "Any",
            },
        },
        Outputs = {
            "VariableName",
        },
    },
    ["AddDebrisItem"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
                AllowedTypes = {"Instance"},
            },
            ["Time"] = {
                VariableType = "Number",
                DefaultValue = 0,
                AllowedTypes = {"Any"},
            },
        },
        Outputs = {},
    },
    ["DefineFunction"] = {
        Inputs = {},
        Outputs = {
            "Function",
            "TUPLE_Parameters",
        },
    },
    ["GUIMouseWheelBackward"] = {
        Inputs = {
            ["GUI"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiObject"},
            },
        },
        Outputs = {},
    },
    ["TeleportToPlaceProtected"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["PlaceId"] = {
                VariableType = "String",
            },
            ["NewServer"] = {
                VariableType = "Bool",
            },
            ["SoloServer"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {},
    },
    ["GiveBadge"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player", "Model"},
            },
            ["BadgeId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["ToString"] = {
        Inputs = {
            ["Number"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "String",
        },
    },
    ["HasBadge"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player", "Model"},
            },
            ["BadgeId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["SplitUDim2"] = {
        Inputs = {
            ["UDim2"] = {
                VariableType = "UDim2",
            },
        },
        Outputs = {
            "XScale",
            "XOffset",
            "YScale",
            "YOffset",
        },
    },
    ["GetPartDirection"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart"},
            },
            ["Direction"] = {
                VariableType = "Choice",
                Choices = {"Forward", "Backward", "Left", "Right", "Up", "Down"},
            },
        },
        Outputs = {
            "Direction",
        },
    },
    ["DescendantRemoved"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Descendant",
        },
    },
    ["SplitString"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
            ["Seperator"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["MathLibrarySingleInput"] = {
        Inputs = {
            ["Function"] = {
                VariableType = "Choice",
                Choices = {"abs", "acos", "asin", "atan", "ceil", "cos", "cosh", "deg", "exp", "floor", "frexp", "log10", "modf", "rad", "randomseed", "round", "sign", "sin", "sinh", "sqrt", "tan", "tanh"},
            },
            ["Number"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["LeftMouseUpLocal"] = {
        Inputs = {},
        Outputs = {},
    },
    ["ReloadPlace"] = {
        Inputs = {},
        Outputs = {},
    },
    ["GUIMouseLeave"] = {
        Inputs = {
            ["GUI"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiObject"},
            },
        },
        Outputs = {},
    },
    ["LoadInstance"] = {
        Inputs = {
            ["Key"] = {
                VariableType = "String",
                AllowedTypes = {"Any"},
            },
            ["Parent"] = {
                VariableType = "Object",
                AllowedTypes = {"Object", "nil"},
            },
            ["Shared"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Success",
            "LoadedModel",
        },
    },
    ["LeaderstatChanged"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player", "Model"},
            },
            ["StatName"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Value",
        },
    },
    ["FindFirstChildWhichIsA"] = {
        Inputs = {
            ["Parent"] = {
                VariableType = "Object",
            },
            ["ChildClass"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["HumanoidDied"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {},
    },
    ["SendChatMessage"] = {
        Inputs = {
            ["Channel"] = {
                VariableType = "Object",
                AllowedTypes = {"TextChannel"},
            },
            ["Message"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "TextChatMessage",
        },
    },
    ["TextBoxReleaseFocus"] = {
        Inputs = {
            ["TextBox"] = {
                VariableType = "Object",
                AllowedTypes = {"TextBox"},
            },
        },
        Outputs = {},
    },
    ["TextBoxCaptureFocus"] = {
        Inputs = {
            ["TextBox"] = {
                VariableType = "Object",
                AllowedTypes = {"TextBox"},
            },
        },
        Outputs = {},
    },
    ["ChattedSpecificMessage"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["Message"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["RemoteFireAllClients2"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {},
    },
    ["PerlinNoise"] = {
        Inputs = {
            ["X"] = {
                VariableType = "Number",
            },
            ["Y"] = {
                VariableType = "Number",
            },
            ["Z"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["ConstructVector3"] = {
        Inputs = {
            ["X"] = {
                VariableType = "Number",
            },
            ["Y"] = {
                VariableType = "Number",
            },
            ["Z"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Vector3",
        },
    },
    ["PowerlangImport"] = {
        Inputs = {
            ["VisualSource"] = {
                VariableType = "String",
            },
            ["ServerOrLocal"] = {
                VariableType = "Bool",
            },
            ["UseLocalVariables"] = {
                VariableType = "Bool",
            },
            ["InfoRemote"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
            ["FilterDelay"] = {
                VariableType = "Number",
            },
            ["RetryAmount"] = {
                VariableType = "Number",
            },
            ["NewParent"] = {
                VariableType = "Object",
                AllowedTypes = {"Object"},
            },
        },
        Outputs = {
            "TUPLE_Info",
        },
    },
    ["PauseSound"] = {
        Inputs = {
            ["Sound"] = {
                VariableType = "Object",
                AllowedTypes = {"Sound"},
            },
        },
        Outputs = {},
    },
    ["RemoteFunctionInvokeClient"] = {
        Inputs = {
            ["RemoteFunction"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteFunction"},
            },
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {
            "TUPLE_Output",
        },
    },
    ["BindToClose"] = {
        Inputs = {},
        Outputs = {},
    },
    ["RemoteFunctionInvokeServer"] = {
        Inputs = {
            ["RemoteFunction"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteFunction"},
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {
            "TUPLE_Output",
        },
    },
    ["ChildAdded"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Child",
        },
    },
    ["DoNotRun"] = {
        Inputs = {},
        Outputs = {},
    },
    ["Round"] = {
        Inputs = {
            ["Number"] = {
                VariableType = "Number",
            },
            ["Type"] = {
                VariableType = "Choice",
                Choices = {"Round", "Floor", "Ceil"},
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["IsOwner"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["AllowAuthorizedUsers"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["UnbanPlayerUID"] = {
        Inputs = {
            ["UserId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {},
    },
    ["UnbanPlayer"] = {
        Inputs = {
            ["Username"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["GetStudioSelection"] = {
        Inputs = {},
        Outputs = {
            "Selection",
        },
    },
    ["OsTime"] = {
        Inputs = {},
        Outputs = {
            "Answer",
        },
    },
    ["RandomNumber"] = {
        Inputs = {
            ["Minimum"] = {
                VariableType = "Number",
                DefaultValue = 0,
            },
            ["Maximum"] = {
                VariableType = "Number",
                DefaultValue = 1,
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["Chatted"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {
            "Message",
        },
    },
    ["Angles"] = {
        Inputs = {
            ["rx"] = {
                VariableType = "Number",
            },
            ["ry"] = {
                VariableType = "Number",
            },
            ["rz"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["LegacyLeaderstatsSaverConversion"] = {
        Inputs = {
            ["UserId"] = {
                VariableType = "Number",
                AllowedTypes = {"Any"},
            },
        },
        Outputs = {
            "Success",
            "LoadedData",
        },
    },
    ["WhileLoop"] = {
        Inputs = {
            ["VariableName1"] = {
                VariableType = "String",
            },
            ["ComparisonType"] = {
                VariableType = "Choice",
                Choices = {"==", "~=", ">", "<", "<=", ">="},
            },
            ["VariableName2"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["AddUserToChatChannel"] = {
        Inputs = {
            ["Channel"] = {
                VariableType = "Object",
                AllowedTypes = {"TextChannel"},
            },
            ["UserId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "TextSource",
        },
    },
    ["RemoteRecieveServer2"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
        },
        Outputs = {
            "Player",
            "TUPLE_Parameters",
        },
    },
    ["RemoteFireServer2"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {},
    },
    ["RemoteFireClient2"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {},
    },
    ["BanPlayer"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {},
    },
    ["GetRankInGroup"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["GroupId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["IsInGroup"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["GroupId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["HumanoidStateChanged"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {
            "PreviousState",
            "NewState",
        },
    },
    ["IsFriendsWith"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["UserId"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["CreateChatChannel"] = {
        Inputs = {},
        Outputs = {
            "Channel",
        },
    },
    ["SetJoinAfterMoveTarget"] = {
        Inputs = {
            ["Target"] = {
                VariableType = "Object",
                AllowedTypes = {"PVInstance", "nil"},
            },
        },
        Outputs = {},
    },
    ["IsTouchscreen"] = {
        Inputs = {},
        Outputs = {
            "Answer",
        },
    },
    ["KeyUp"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["Key"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["FromMatrix"] = {
        Inputs = {
            ["pos"] = {
                VariableType = "Vector3",
            },
            ["vX"] = {
                VariableType = "Vector3",
            },
            ["vY"] = {
                VariableType = "Vector3",
            },
            ["vZ"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "CFrame",
        },
    },
    ["Modulus"] = {
        Inputs = {
            ["Number1"] = {
                VariableType = "Number",
            },
            ["Number2"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GiveRetrobux"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Any", "nil", "Object"},
            },
            ["Amount"] = {
                VariableType = "Number",
                DefaultValue = 1000,
            },
        },
        Outputs = {},
    },
    ["OsDate"] = {
        Inputs = {
            ["Time"] = {
                VariableType = "Number",
            },
            ["Timezone"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "DateTable",
        },
    },
    ["GetPlayerFromCharacter"] = {
        Inputs = {
            ["Character"] = {
                VariableType = "Object",
                AllowedTypes = {"Model"},
            },
        },
        Outputs = {
            "Player",
        },
    },
    ["IsPlayingSolo"] = {
        Inputs = {},
        Outputs = {
            "Answer",
        },
    },
    ["InputEnded"] = {
        Inputs = {},
        Outputs = {
            "Type",
            "Processed",
            "KeyCode",
            "Position",
        },
    },
    ["SetBodyGyroDirection"] = {
        Inputs = {
            ["BodyGyro"] = {
                VariableType = "Object",
                AllowedTypes = {"BodyGyro"},
            },
            ["Rotation"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {},
    },
    ["ToWorldSpace"] = {
        Inputs = {
            ["Position"] = {
                VariableType = "Vector3",
            },
            ["Rotation"] = {
                VariableType = "Vector3",
            },
            ["ObjectPosition"] = {
                VariableType = "Vector3",
            },
            ["ObjectRotation"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "ResultPosition",
            "ResultRotation",
        },
    },
    ["ToObjectSpace"] = {
        Inputs = {
            ["Position"] = {
                VariableType = "Vector3",
            },
            ["Rotation"] = {
                VariableType = "Vector3",
            },
            ["ObjectPosition"] = {
                VariableType = "Vector3",
            },
            ["ObjectRotation"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "ResultPosition",
            "ResultRotation",
        },
    },
    ["InversePositionAndRotation"] = {
        Inputs = {
            ["Position"] = {
                VariableType = "Vector3",
            },
            ["Rotation"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "ResultPosition",
            "ResultRotation",
        },
    },
    ["Lerp"] = {
        Inputs = {
            ["StartPosition"] = {
                VariableType = "Vector3",
            },
            ["StartRotation"] = {
                VariableType = "Vector3",
            },
            ["GoalPosition"] = {
                VariableType = "Vector3",
            },
            ["GoalRotation"] = {
                VariableType = "Vector3",
            },
            ["Alpha"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "ResultPosition",
            "ResultRotation",
        },
    },
    ["Comment2"] = {
        Inputs = {
            ["Comment"] = {
                VariableType = "String",
            },
            ["Color"] = {
                VariableType = "BrickColor",
                DefaultValue = BrickColor.new("Institutional white"),
            },
        },
        Outputs = {},
    },
    ["JsonEncode"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
                AllowedTypes = {"Any"},
            },
        },
        Outputs = {
            "JSON",
        },
    },
    ["BreakJoints"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart", "Model"},
            },
        },
        Outputs = {},
    },
    ["GetJoints"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart"},
            },
        },
        Outputs = {
            "Joints",
        },
    },
    ["ToolActivated"] = {
        Inputs = {
            ["Tool"] = {
                VariableType = "Object",
                AllowedTypes = {"Tool"},
            },
        },
        Outputs = {},
    },
    ["AssignCollisionGroup"] = {
        Inputs = {
            ["BasePart"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart"},
            },
            ["GroupName"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["TakeDamage"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
            },
            ["Damage"] = {
                VariableType = "Number",
            },
        },
        Outputs = {},
    },
    ["CharacterAdded"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {
            "Character",
        },
    },
    ["Lower"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["Upper"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["PartTouchEnded"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart"},
            },
        },
        Outputs = {
            "otherPart",
        },
    },
    ["FindString"] = {
        Inputs = {
            ["Pattern"] = {
                VariableType = "String",
            },
            ["String"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["RemoteFireServer"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
            ["Parameter1"] = {
                VariableType = "Any",
            },
            ["Parameter2"] = {
                VariableType = "Any",
            },
            ["Parameter3"] = {
                VariableType = "Any",
            },
            ["Parameter4"] = {
                VariableType = "Any",
            },
            ["Parameter5"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["ConstructNumberRange"] = {
        Inputs = {
            ["Min"] = {
                VariableType = "Number",
            },
            ["Max"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "NumberRange",
        },
    },
    ["MegaBlock"] = {
        Inputs = {},
        Outputs = {},
    },
    ["SetCoreGuiEnabled"] = {
        Inputs = {
            ["CoreGui"] = {
                VariableType = "Choice",
                Choices = {"All", "Backpack", "Chat", "Health", "PlayerList"},
            },
            ["Enabled"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["MathLibraryTripleInput"] = {
        Inputs = {
            ["Function"] = {
                VariableType = "Choice",
                Choices = {"clamp", "noise"},
            },
            ["Number1"] = {
                VariableType = "Number",
            },
            ["Number2"] = {
                VariableType = "Number",
            },
            ["Number3"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GUIMouseEnter"] = {
        Inputs = {
            ["GUI"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiObject"},
            },
        },
        Outputs = {},
    },
    ["SetModelPrimaryPartCFrameNew"] = {
        Inputs = {
            ["Model"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart", "Model"},
            },
            ["CFrame"] = {
                VariableType = "CFrame",
            },
        },
        Outputs = {},
    },
    ["MathLibraryDoubleInput"] = {
        Inputs = {
            ["Function"] = {
                VariableType = "Choice",
                Choices = {"atan2", "fmod", "idexp", "log", "max", "min", "pow", "random"},
            },
            ["Number1"] = {
                VariableType = "Number",
            },
            ["Number2"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GetMousePosition3DLocal"] = {
        Inputs = {},
        Outputs = {
            "Position",
        },
    },
    ["SplitVector2"] = {
        Inputs = {
            ["Vector2"] = {
                VariableType = "Vector2",
            },
        },
        Outputs = {
            "X",
            "Y",
        },
    },
    ["HumanoidMoveTo"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
            ["Target"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {},
    },
    ["SolveEquation"] = {
        Inputs = {
            ["Equation"] = {
                VariableType = "Equation",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["Multiplication"] = {
        Inputs = {
            ["Number1"] = {
                VariableType = "Number",
                AllowedTypes = {"number", "Vector2", "Vector3", "CFrame"},
            },
            ["Number2"] = {
                VariableType = "Number",
                AllowedTypes = {"number", "Vector2", "Vector3", "CFrame"},
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["ToNumber"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Number",
        },
    },
    ["ToNumberAny"] = {
        Inputs = {
            ["Input"] = {
                VariableType = "Any",
            },
        },
        Outputs = {
            "Number",
        },
    },
    ["Subtraction"] = {
        Inputs = {
            ["Number1"] = {
                VariableType = "Number",
                AllowedTypes = {"number", "Vector2", "Vector3", "CFrame"},
            },
            ["Number2"] = {
                VariableType = "Number",
                AllowedTypes = {"number", "Vector2", "Vector3", "CFrame"},
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["BlockThatMakesYourCharacterSentient"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {
            "MOOD",
        },
    },
    ["JumpRequest"] = {
        Inputs = {},
        Outputs = {},
    },
    ["SetLeaderstat"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player", "Model"},
            },
            ["StatName"] = {
                VariableType = "String",
            },
            ["Value"] = {
                VariableType = "Number",
            },
        },
        Outputs = {},
    },
    ["CreateLeaderstat"] = {
        Inputs = {
            ["StatName"] = {
                VariableType = "String",
            },
            ["InitialValue"] = {
                VariableType = "Number",
            },
        },
        Outputs = {},
    },
    ["ClearJoinAfterMoveJoints"] = {
        Inputs = {},
        Outputs = {},
    },
    ["GetMouseTargetSurfaceLocal"] = {
        Inputs = {},
        Outputs = {
            "Surface",
        },
    },
    ["NormalizeVector3"] = {
        Inputs = {
            ["Vector3"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GetMousePosition2DLocal"] = {
        Inputs = {},
        Outputs = {
            "X",
            "Y",
        },
    },
    ["DescendantRemoving"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Descendant",
        },
    },
    ["ToolDeactivated"] = {
        Inputs = {
            ["Tool"] = {
                VariableType = "Object",
                AllowedTypes = {"Tool"},
            },
        },
        Outputs = {},
    },
    ["GUIRightMouseButtonClick"] = {
        Inputs = {
            ["GUIButton"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiButton"},
            },
        },
        Outputs = {},
    },
    ["IsGuest"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {
            "Answer",
        },
    },
    ["TableAppend"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
            },
            ["Value"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["FindFirstChildOfClass"] = {
        Inputs = {
            ["Parent"] = {
                VariableType = "Object",
            },
            ["ChildClass"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GetLeaderstat"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player", "Model"},
            },
            ["StatName"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Value",
        },
    },
    ["KeyDown"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["Key"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["RightMouseUp"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {},
    },
    ["RightMouseDown"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {},
    },
    ["LeftMouseDown"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {},
    },
    ["GetMouseTargetSurface"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {
            "Surface",
        },
    },
    ["SetTableValue"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
            },
            ["Key"] = {
                VariableType = "Any",
            },
            ["Value"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["GetMouseTargetPart"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {
            "TargetPart",
        },
    },
    ["SetModelPrimaryPartCFrame"] = {
        Inputs = {
            ["Model"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart", "Model"},
            },
            ["Position"] = {
                VariableType = "Vector3",
            },
            ["Rotation"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {},
    },
    ["GetMousePosition2D"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {
            "X",
            "Y",
        },
    },
    ["GetMousePosition3D"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
        },
        Outputs = {
            "Position",
        },
    },
    ["InputChanged"] = {
        Inputs = {},
        Outputs = {
            "Type",
            "Processed",
            "KeyCode",
            "Position",
            "Delta",
        },
    },
    ["ChangeHumanoidStateLocal"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
            ["State"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["CombineStringWithNumber"] = {
        Inputs = {
            ["String"] = {
                VariableType = "String",
            },
            ["Number"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Combined",
        },
    },
    ["InputBegan"] = {
        Inputs = {},
        Outputs = {
            "Type",
            "Processed",
            "KeyCode",
            "Position",
        },
    },
    ["TextBoxFocusLost"] = {
        Inputs = {
            ["TextBox"] = {
                VariableType = "Object",
                AllowedTypes = {"TextBox"},
            },
        },
        Outputs = {
            "EnterPressed",
        },
    },
    ["TextBoxFocused"] = {
        Inputs = {
            ["TextBox"] = {
                VariableType = "Object",
                AllowedTypes = {"TextBox"},
            },
        },
        Outputs = {},
    },
    ["JsonDecode"] = {
        Inputs = {
            ["JSON"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Table",
        },
    },
    ["GUIRightMouseButtonUp"] = {
        Inputs = {
            ["GUIButton"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiButton"},
            },
        },
        Outputs = {},
    },
    ["IsGameLoaded"] = {
        Inputs = {},
        Outputs = {
            "Answer",
        },
    },
    ["TeleportToPlace"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["PlaceId"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["GetCFrameDirection"] = {
        Inputs = {
            ["CFrame"] = {
                VariableType = "CFrame",
            },
            ["Direction"] = {
                VariableType = "Choice",
                Choices = {"Forward", "Backward", "Left", "Right", "Up", "Down"},
            },
        },
        Outputs = {
            "Direction",
        },
    },
    ["GetPlayersOnTeam"] = {
        Inputs = {
            ["Team"] = {
                VariableType = "Object",
                AllowedTypes = {"Team"},
            },
        },
        Outputs = {
            "PlayerTable",
        },
    },
    ["GetHumanoidState"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {
            "State",
        },
    },
    ["ChangeHumanoidState"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
            ["State"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["KeyDownLocal"] = {
        Inputs = {
            ["Key"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["WaitForChild"] = {
        Inputs = {
            ["Parent"] = {
                VariableType = "Object",
            },
            ["ChildName"] = {
                VariableType = "String",
            },
            ["TimeOut"] = {
                VariableType = "Number",
                DefaultValue = 5,
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["AddToLeaderstat"] = {
        Inputs = {
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player", "Model"},
            },
            ["StatName"] = {
                VariableType = "String",
            },
            ["Amount"] = {
                VariableType = "Number",
            },
        },
        Outputs = {},
    },
    ["RightMouseDownLocal"] = {
        Inputs = {},
        Outputs = {},
    },
    ["RemoteFunctionOnInvokeServer"] = {
        Inputs = {
            ["RemoteFunction"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteFunction"},
            },
        },
        Outputs = {
            "Player",
            "TUPLE_Parameters",
        },
    },
    ["PlaySound"] = {
        Inputs = {
            ["Sound"] = {
                VariableType = "Object",
                AllowedTypes = {"Sound"},
            },
        },
        Outputs = {},
    },
    ["CollisionGroupSetCollidable"] = {
        Inputs = {
            ["GroupName1"] = {
                VariableType = "String",
            },
            ["GroupName2"] = {
                VariableType = "String",
            },
            ["Collidable"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {},
    },
    ["FireRocketPropulsion"] = {
        Inputs = {
            ["RocketPropulsion"] = {
                VariableType = "Object",
                AllowedTypes = {"RocketPropulsion"},
            },
        },
        Outputs = {},
    },
    ["BindableFunctionInvoke"] = {
        Inputs = {
            ["BindableFunction"] = {
                VariableType = "Object",
                AllowedTypes = {"BindableFunction"},
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {
            "TUPLE_Output",
        },
    },
    ["GetPartPhysicalProperties"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart"},
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["ConstructUDim2"] = {
        Inputs = {
            ["XScale"] = {
                VariableType = "Number",
            },
            ["XOffset"] = {
                VariableType = "Number",
            },
            ["YScale"] = {
                VariableType = "Number",
            },
            ["YOffset"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "UDim2",
        },
    },
    ["MoveModelTo"] = {
        Inputs = {
            ["Model"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart", "Model"},
            },
            ["Position"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {},
    },
    ["Error"] = {
        Inputs = {
            ["Text"] = {
                VariableType = "String",
                AllowedTypes = {"Any"},
            },
        },
        Outputs = {},
    },
    ["CreateJoinAfterMoveJoints"] = {
        Inputs = {},
        Outputs = {},
    },
    ["MakeJoints"] = {
        Inputs = {
            ["Part"] = {
                VariableType = "Object",
                AllowedTypes = {"BasePart", "Model"},
            },
        },
        Outputs = {},
    },
    ["BindableFire"] = {
        Inputs = {
            ["BindableEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"BindableEvent"},
            },
            ["Parameter1"] = {
                VariableType = "Any",
            },
            ["Parameter2"] = {
                VariableType = "Any",
            },
            ["Parameter3"] = {
                VariableType = "Any",
            },
            ["Parameter4"] = {
                VariableType = "Any",
            },
            ["Parameter5"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["Comment"] = {
        Inputs = {
            ["Comment"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["BindableFire2"] = {
        Inputs = {
            ["BindableEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"BindableEvent"},
            },
            ["Parameters"] = {
                VariableType = "Tuple",
            },
        },
        Outputs = {},
    },
    ["GUILeftMouseButtonClick"] = {
        Inputs = {
            ["GUIButton"] = {
                VariableType = "Object",
                AllowedTypes = {"GuiButton"},
            },
        },
        Outputs = {},
    },
    ["RemoteFireClient"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
            ["Player"] = {
                VariableType = "Object",
                AllowedTypes = {"Player"},
            },
            ["Parameter1"] = {
                VariableType = "Any",
            },
            ["Parameter2"] = {
                VariableType = "Any",
            },
            ["Parameter3"] = {
                VariableType = "Any",
            },
            ["Parameter4"] = {
                VariableType = "Any",
            },
            ["Parameter5"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["GetTableLength"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
            },
        },
        Outputs = {
            "Length",
        },
    },
    ["GetDescendants"] = {
        Inputs = {
            ["Parent"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "DescendantTable",
        },
    },
    ["GetRandomChild"] = {
        Inputs = {
            ["Parent"] = {
                VariableType = "Object",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["SetObjectProperty"] = {
        Inputs = {
            ["Object"] = {
                VariableType = "Object",
                AllowedTypes = {"Instance"},
            },
            ["Property"] = {
                VariableType = "String",
            },
            ["Value"] = {
                VariableType = "Any",
            },
        },
        Outputs = {},
    },
    ["CreateObject"] = {
        Inputs = {
            ["ClassName"] = {
                VariableType = "String",
            },
            ["Parent"] = {
                VariableType = "Object",
                AllowedTypes = {"Object", "nil"},
            },
        },
        Outputs = {
            "Object",
        },
    },
    ["DistanceBetweenPoints"] = {
        Inputs = {
            ["Point 1"] = {
                VariableType = "Vector3",
            },
            ["Point 2"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "Distance",
        },
    },
    ["ConstructColor3"] = {
        Inputs = {
            ["R"] = {
                VariableType = "Number",
            },
            ["G"] = {
                VariableType = "Number",
            },
            ["B"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Color3",
        },
    },
    ["FindPartOnRay"] = {
        Inputs = {
            ["Origin"] = {
                VariableType = "Vector3",
            },
            ["Direction"] = {
                VariableType = "Vector3",
            },
            ["FilterType"] = {
                VariableType = "Choice",
                Choices = {"Blacklist", "Whitelist"},
            },
            ["FilterDescendantsTable"] = {
                VariableType = "Table",
            },
        },
        Outputs = {
            "Instance",
            "Position",
            "Normal",
        },
    },
    ["ToObjectSpace1"] = {
        Inputs = {
            ["CFrame"] = {
                VariableType = "CFrame",
            },
            ["ObjectCFrame"] = {
                VariableType = "CFrame",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["InverseCFrame1"] = {
        Inputs = {
            ["CFrame"] = {
                VariableType = "CFrame",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["Lerp1"] = {
        Inputs = {
            ["StartCFrame"] = {
                VariableType = "CFrame",
            },
            ["GoalCFrame"] = {
                VariableType = "CFrame",
            },
            ["Alpha"] = {
                VariableType = "Number",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["BrickColorToColor3"] = {
        Inputs = {
            ["BrickColor"] = {
                VariableType = "BrickColor",
            },
        },
        Outputs = {
            "Color3",
        },
    },
    ["Concatenate"] = {
        Inputs = {
            ["FirstString"] = {
                VariableType = "String",
            },
            ["SecondString"] = {
                VariableType = "String",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GetRobloxVersion"] = {
        Inputs = {},
        Outputs = {
            "Answer",
        },
    },
    ["HumanoidMoveToFinished"] = {
        Inputs = {
            ["Humanoid"] = {
                VariableType = "Object",
                AllowedTypes = {"Humanoid"},
            },
        },
        Outputs = {
            "ReachedTarget",
        },
    },
    ["RemoteRecieveServer"] = {
        Inputs = {
            ["RemoteEvent"] = {
                VariableType = "Object",
                AllowedTypes = {"RemoteEvent"},
            },
        },
        Outputs = {
            "Player",
            "Parameter1",
            "Parameter2",
            "Parameter3",
            "Parameter4",
            "Parameter5",
        },
    },
    ["SortTable"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
            },
            ["Order"] = {
                VariableType = "Choice",
                Choices = {"Low to High", "High to Low"},
            },
        },
        Outputs = {},
    },
    ["Wait"] = {
        Inputs = {
            ["Time"] = {
                VariableType = "Number",
                DefaultValue = 1,
                AllowedTypes = {"Any"},
            },
        },
        Outputs = {},
    },
    ["ExecuteBlock"] = {
        Inputs = {
            ["Name"] = {
                VariableType = "String",
            },
        },
        Outputs = {},
    },
    ["ComputePath"] = {
        Inputs = {
            ["StartPosition"] = {
                VariableType = "Vector3",
            },
            ["EndPosition"] = {
                VariableType = "Vector3",
            },
        },
        Outputs = {
            "ComputedPath",
        },
    },
    ["SaveVariable"] = {
        Inputs = {
            ["Value"] = {
                VariableType = "Any",
            },
            ["Key"] = {
                VariableType = "String",
                AllowedTypes = {"Any"},
            },
            ["Shared"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Success",
        },
    },
    ["IsConnected"] = {
        Inputs = {
            ["EventConnection"] = {
                VariableType = "EventConnection",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["GetTableValue"] = {
        Inputs = {
            ["Table"] = {
                VariableType = "Table",
                AllowedTypes = {"Any"},
            },
            ["Key"] = {
                VariableType = "Any",
            },
        },
        Outputs = {
            "Value",
        },
    },
    ["Heartbeat"] = {
        Inputs = {},
        Outputs = {
            "DeltaTime",
        },
    },
    ["GetDefaultChannel"] = {
        Inputs = {},
        Outputs = {
            "Channel",
        },
    },
    ["NOT"] = {
        Inputs = {
            ["A"] = {
                VariableType = "Bool",
            },
        },
        Outputs = {
            "Result",
        },
    },
    ["NOTAny"] = {
        Inputs = {
            ["A"] = {
                VariableType = "Any",
            },
        },
        Outputs = {
            "Result",
        },
    },
}
module.BlocksList = BlocksList
table.freeze(module)
return module
