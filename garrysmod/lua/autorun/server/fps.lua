--Help boost players fps by disabling casting of dynamic shadows.
hook.Add("InitPostEntityMap", "Adding", function()
  --Remove shadow_control
  for _, ent in pairs(ents.FindByClass("shadow_control")) do
    ent:Remove()
  end
end)
