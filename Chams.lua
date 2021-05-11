	local plr = game:GetService("Players").LocalPlayer
	local teamcolor = true
	local enemycolor = true
	if enemycolor == true and teamcolor == true then
		warn("Cannot do both, going to enemycolor instead.")
	end
	function update()
		for _,v in next, game:GetService("Players"):GetPlayers() do
			if v.Name ~= plr.Name and v.Team ~= plr.Team then
				for _,b in next, v.Character:GetChildren() do
					if b:IsA("Part") or b:IsA("MeshPart") then
						if not b:FindFirstChild("BoxHandleAdornment") then
							b.Transparency = 1
							local box = Instance.new("BoxHandleAdornment",b)
							box.AlwaysOnTop = true
							box.Adornee = b
							box.Size = b.Size
							if enemycolor == true and teamcolor == true then
								box.Color3 = Color3.new(1,0,0)
							elseif teamcolor == true then
								box.Color3 = v.TeamColor.Color
							elseif enemycolor == true then
								box.Color3 = Color3.new(1,0,0)
							end
						end
					end
				end
			end
		end
	end
	while wait() do
		update()
	end