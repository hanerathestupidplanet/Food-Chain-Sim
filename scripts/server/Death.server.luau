local agetodie = math.random(60, 240) -- 1 minute to 4 minutes age time
local npc = script.Parent
local stats = npc.Stats
local hunger = script.Parent.Stats.Hunger
local thirst = script.Parent.Stats.Thirst
while true do
	wait(1)
	agetodie -= 1
	if agetodie <= 0 or (hunger.Value >= 100 or thirst.Value >= 100) then
		npc.Health = 0
		wait(3)
		npc.Parent:Destroy()
	end
end