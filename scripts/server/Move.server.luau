local npc = script.Parent
local movepart = script.Parent.Parent.MoveTo
function movetorandompos()
	npc.MoveTarget = nil
	movepart.Position += Vector3.New(math.random(-20, 20),0,math.random(-20, 20))
	wait(math.random(1, 3))
	npc.MoveTarget = movepart
end
npc.MoveTarget = movepart
npc.Touched:Connect(function(hit)
	if hit == movepart or hit:HasTag("void") then
		movetorandompos()
	end
end)