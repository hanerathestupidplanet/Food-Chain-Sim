local movepart = script.Parent.Parent.MoveTo

local npc = script.Parent
movepart.Position += Vector3.New(math.random(-10, 10),0,math.random(-10, 10))

npc.MoveTarget = movepart
npc.Touched:Connect(function(hit)
	if hit == movepart or hit:HasTag("void") then
	wait(math.random(0, 3))
	movepart.Position += Vector3.New(math.random(-10, 10),0,math.random(-10, 10))
	end
end)