if game.PlaceId == 3035114590 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "RD HUB", HidePremium = false, SaveConfig = true, ConfigFolder = "RD HUBCfg", IntroEnabled = false,})

--Valores
_G.AutoClick = true



--Funcoes

function AutoClick()
    while _G.AutoClick == true do
        local Event5= game:GetService("ReplicatedStorage").Remotes.Combat5
        Event5:FireServer()
        local Event4 = game:GetService("ReplicatedStorage").Remotes.Combat4
        Event4:FireServer()
        local Event3 = game:GetService("ReplicatedStorage").Remotes.Combat3
        Event3:FireServer()
        local Event2 = game:GetService("ReplicatedStorage").Remotes.Combat2
        Event2:FireServer()
        local Event = game:GetService("ReplicatedStorage").Remotes.Combat
        Event:FireServer()
        wait(.00000000000000000000000000000000000000000000001)
        end
end


--Frame

local Main = Window:MakeTab({
	Name = "Auto-Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Main:AddSection({
	Name = "PRINCIPAIS"
})
Main:AddToggle({
	Name = "Auto-Click",
	Default = false,
	Callback = function(Value)
		_G.AutoClick = Value
        AutoClick()
	end    
})

elseif game.PlaceId == 7235547883 then

    --FV

    local plr = game.Players.LocalPlayer

    --HUB

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    local Window = OrionLib:MakeWindow({Name = "RD HUB", HidePremium = false, SaveConfig = true, ConfigFolder = "rd hubCfg", IntroEnabled = false,})



    --Valores






    --Funcoes
    function Antikick()
        plr.UserId = 1216025046
        print("Alterado com sucesso")
        end

    function ForceTP()
        plr.Backpack.Antbug:Destroy()
    end


    --Abas
    local PlayerTab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Section = PlayerTab:AddSection({
        Name = "Jogador"
    })
    PlayerTab:AddButton({
        Name = "Anti-Kick!",
        Callback = function()
            Antikick()
          end  
    })
    PlayerTab:AddButton({
        Name = "Force TP",
        Callback = function()
            ForceTP()
          end  
    })

end
