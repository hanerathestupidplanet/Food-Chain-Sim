local npc = script.Parent
local sensoryrange = npc.Parent.SensoryRange
local stats = npc.Stats
local hunger = stats.Hunger
local water = stats.Thirst
local moveto = npc.Parent.MoveTo

while true do
	wait()
	for _, v in pairs(sensoryrange:GetTouching()) do
		if (v:HasTag("plant") and hunger.Value >= 40) or (v:HasTag("waterspot") and water.Value >= 40) then
			moveto.Position = Vector3.New(v.Position.X, moveto.Position.Y, v.Position.Z)
			wait(5)
		end
	end
end