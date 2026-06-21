local npc = script.Parent.Parent
local hunger = script.Parent.Hunger
local thirst = script.Parent.Thirst

while true do
	wait()
	npc.DisplayName = "Hunger: " .. tostring(hunger.Value) .. "\nThirst: " .. tostring(thirst.Value)
end