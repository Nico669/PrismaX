for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do

lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
end

for i,v in pairs(Workspace.Prison_ITEMS.single:GetChildren()) do

lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
end

local weapons = {"Sharpened stick", "Extendo mirror"}
  for i, v in pairs(game.ReplicatedStorage.Tools:GetChildren()) do
  for j, k in pairs(weapons) do
  if v.Name == k then
  v:Clone().Parent = game.Players.LocalPlayer.Backpack
  end
  end
  end
