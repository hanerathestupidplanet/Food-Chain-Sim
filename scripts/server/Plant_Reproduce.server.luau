local plant = script.Parent
local waterdetect = plant.waterdetection
local reproducetimes = math.random(5, 15)
for i = 1, reproducetimes do
	wait(math.random(1, 20))
	wait(.5)
	for _, v in pairs(waterdetect:GetTouching()) do
		if v:HasTag("water") then
			--print("should reproduce")
			local clone = plant:Clone()
			clone.Parent = Environment
			clone.Position = plant.Position + Vector3.New(math.random(-20, 20),0,math.random(-20, 20))
			clone.Generation.Value += 1
			break
		end
	end
end
plant:Destroy()