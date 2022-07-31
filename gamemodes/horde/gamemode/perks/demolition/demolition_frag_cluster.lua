PERK.PrintName = "Cluster Bombs"
PERK.Description = "Grenades and SLAMs spawn {1} mini-nades on detonation.\nMini-nades do {2} less damage."
PERK.Icon = "materials/perks/frag_cluster.png"
PERK.Params = {
    [1] = {value = 3,},
    [2] = {value = 0.25, percent = true},
}

local exp = {npc_grenade_frag = 100, npc_satchel = 100, npc_tripmine = 100, arccw_thr_go_frag = 200}
PERK.Hooks = {}
PERK.Hooks.EntityRemoved = function(ent)
    local owner = ent:GetInternalVariable("m_hThrower")
    if ent.Owner and ent.Owner:IsPlayer() then
        owner = ent.Owner
    end
    if not owner then ent = ent:GetInternalVariable("m_hOwner") end
    if SERVER and IsValid(ent) and exp[ent:GetClass()] and IsValid(owner)
            and owner:IsPlayer() and owner:Horde_GetPerk("demolition_frag_cluster") then
        local dmg = exp[ent:GetClass()]
        local rad = 200
        for i = 1, 3 do
            local prop = ents.Create("prop_physics")
            prop:SetModel("models/Combine_Helicopter/helicopter_bomb01.mdl")
            prop:SetModelScale(0.25, 0)
            prop:SetPos(ent:GetPos() + VectorRand() * 4 + Vector(0, 0, 8))
            prop:SetAngles(AngleRand())
            prop:SetCollisionGroup(COLLISION_GROUP_WEAPON)
            prop:Spawn()
            prop:Activate()
            timer.Simple(0, function() prop:GetPhysicsObject():AddVelocity(VectorRand() * 300 + Vector(0, 0, 200)) end)
            timer.Simple(0.5 + i * 0.1, function() if IsValid(prop) then
                local e = EffectData()
                e:SetOrigin(prop:GetPos())
                util.Effect("Explosion", e)
                util.BlastDamage(prop, owner, prop:GetPos(), rad, dmg)
                prop:Remove()
            end end)
        end
    end
end