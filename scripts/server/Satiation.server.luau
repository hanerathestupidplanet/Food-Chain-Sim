local npc = script.Parent
local stats = npc.Stats
local hunger = stats.Hunger
local water = stats.Thirst
--local debounce
npc.Touched:Connect(function(v)
	if debounce then return end

	if v:HasTag("plant") and hunger.Value >= 40 then
		local calories = v.CALORIES.Value * 3
		hunger.Value -= calories
		v.Parent.Parent:Destroy()
	end
	
	if v:HasTag("waterspot") and water.Value >= 40 then
		water.Value = 0
	end--[[
	debounce = true
	wait(3)
	debounce = false]]
end)