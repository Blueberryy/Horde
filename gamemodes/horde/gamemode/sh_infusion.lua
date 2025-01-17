-- Infuse weapon with interesting properties

if SERVER then
util.AddNetworkString("Horde_SyncInfusion")
util.AddNetworkString("Horde_BuyInfusion")
util.AddNetworkString("Horde_SellInfusion")
end

HORDE.Infusion_All = -1
HORDE.Infusion_None = 0
HORDE.Infusion_Hemo = 1
HORDE.Infusion_Concussive = 2
HORDE.Infusion_Septic = 3
HORDE.Infusion_Flaming = 4
HORDE.Infusion_Arctic = 5
HORDE.Infusion_Galvanizing = 6
HORDE.Infusion_Quality = 7
HORDE.Infusion_Impaling = 8
HORDE.Infusion_Rejuvenating = 9
HORDE.Infusion_Quicksilver = 10
HORDE.Infusion_Siphoning = 11
HORDE.Infusion_Titanium = 12
HORDE.Infusion_Chrono = 13


HORDE.Infusion_Names = {
    [HORDE.Infusion_None] = "None",
    [HORDE.Infusion_Hemo] = "Hemo",
    [HORDE.Infusion_Concussive] = "Concussive",
    [HORDE.Infusion_Septic] = "Septic",
    [HORDE.Infusion_Flaming] = "Flaming",
    [HORDE.Infusion_Arctic] = "Arctic",
    [HORDE.Infusion_Galvanizing] = "Galvanizing",
    [HORDE.Infusion_Quality] = "Quality",
    [HORDE.Infusion_Impaling] = "Impaling",
    [HORDE.Infusion_Rejuvenating] = "Rejuvenating",
    [HORDE.Infusion_Quicksilver] = "Quicksilver",
    [HORDE.Infusion_Siphoning] = "Siphoning",
    [HORDE.Infusion_Titanium] = "Titanium",
    [HORDE.Infusion_Chrono] = "Chrono",
}

HORDE.Infusion_Icons = {
    [HORDE.Infusion_None] = "damagetype/physical.png",
    [HORDE.Infusion_Hemo] = "status/bleeding.png",
    [HORDE.Infusion_Concussive] = "damagetype/blunt.png",
    [HORDE.Infusion_Septic] = "damagetype/poison.png", 
    [HORDE.Infusion_Flaming] = "damagetype/fire.png",
    [HORDE.Infusion_Arctic] = "damagetype/cold.png",
    [HORDE.Infusion_Galvanizing] = "damagetype/lightning.png",
    [HORDE.Infusion_Quality] = "star.png",
    [HORDE.Infusion_Impaling] = "infusion/impaling.png",
    [HORDE.Infusion_Rejuvenating] = "infusion/rejuvenating.png",
    [HORDE.Infusion_Quicksilver] = "infusion/quicksilver.png",
    [HORDE.Infusion_Siphoning] = "infusion/siphoning.png",
    [HORDE.Infusion_Titanium] = "infusion/titanium.png",
    [HORDE.Infusion_Chrono] = "infusion/chrono.png",
}

HORDE.Infusion_Colors = {
    [HORDE.Infusion_None] = color_white,
    [HORDE.Infusion_Hemo] = HORDE.STATUS_COLOR[HORDE.Status_Bleeding],
    [HORDE.Infusion_Concussive] = color_white,
    [HORDE.Infusion_Septic] = HORDE.DMG_COLOR[HORDE.DMG_POISON],
    [HORDE.Infusion_Flaming] = HORDE.DMG_COLOR[HORDE.DMG_FIRE],
    [HORDE.Infusion_Arctic] = HORDE.DMG_COLOR[HORDE.DMG_COLD],
    [HORDE.Infusion_Galvanizing] = HORDE.DMG_COLOR[HORDE.DMG_LIGHTNING],
    [HORDE.Infusion_Quality] = color_white,
    [HORDE.Infusion_Impaling] = color_white,
    [HORDE.Infusion_Rejuvenating] = Color(50,205,50),
    [HORDE.Infusion_Quicksilver] = Color(220, 220, 220),
    [HORDE.Infusion_Siphoning] = Color(255, 74, 95),
    [HORDE.Infusion_Titanium] = Color(192, 192, 192),
    [HORDE.Infusion_Chrono] = Color(0,139,139),
}

HORDE.Infusion_Description = {
[HORDE.Infusion_None] = "No effect.",
[HORDE.Infusion_Hemo] = [[
Convert 75% weapon damage into Slashing damage.

Weapon deals only Slashing damage.

Weapon damage increases Bleeding buildup. 
]],
[HORDE.Infusion_Concussive] = [[
Convert 75% weapon damage into Blunt damage.

Weapon deals only Blunt damage.

Weapon damage increases Stun buildup. 
]],
[HORDE.Infusion_Septic] = [[
Convert 75% weapon damage into Poison damage.

Weapon deals only Poison damage.

Weapon damage increases Break buildup. 
]],
[HORDE.Infusion_Flaming] = [[
Convert 75% weapon damage into Fire damage.

Weapon deals only Fire damage.

Weapon ignites enemies on hit.
]],
[HORDE.Infusion_Arctic] = [[
Convert 75% weapon damage into Cold damage.

Weapon deals only Cold damage.

Weapon damage increases Frostbite buildup. 
]],
[HORDE.Infusion_Galvanizing] = [[
Convert 75% weapon damage into Lightning damage.

Weapon deals only Lightning damage.

Weapon damage increases Shock buildup. 
]],
[HORDE.Infusion_Quality] = [[
20% increased weapon damage.

Weapon damage is unaffected by perks or gadgets.
]],
[HORDE.Infusion_Impaling] = [[
25% increased weapon headshot damage.

25% less weapon non-headshot damage.
]],
[HORDE.Infusion_Rejuvenating] = [[
Amplifies weapon healing/leeching by 25%.

25% less weapon damage.
]],
[HORDE.Infusion_Quicksilver] = [[
Increases/decreases weapon damage based on player's available weight.

<= 15% weight -> 30% damage increase
<= 30% weight -> 25% damage increase 
<= 40% weight -> 15% damage increase 
>40% weight -> 25% damage decrease
]],
[HORDE.Infusion_Titanium] = [[
Reduces player damage taken based on weapon weight.

Decrease 1% damage taken for every 1 weight on the weapon.

25% less weapon damage.
]],
[HORDE.Infusion_Siphoning] = [[
+1 health when you kill enemy.

25% less weapon damage.
]],
[HORDE.Infusion_Chrono] = [[
Increases weapon damage the longer the weapon is being held by the user.

6% damage increase per wave held by the user.
Increase caps at 50%.

20% decreased weapon damage.
]]
}

local debuffs = {
    [HORDE.Infusion_Hemo] = HORDE.Status_Bleeding,
    [HORDE.Infusion_Septic] = HORDE.Status_Break,
    [HORDE.Infusion_Flaming] = HORDE.Status_Ignite,
    [HORDE.Infusion_Arctic] = HORDE.Status_Frostbite,
    [HORDE.Infusion_Galvanizing] = HORDE.Status_Shock,
    [HORDE.Infusion_Concussive] = HORDE.Status_Stun,
}

local plymeta = FindMetaTable("Player")

function plymeta:Horde_GetInfusion(class)
    if not self.Horde_Infusions then return HORDE.Infusion_None end
    if not self.Horde_Infusions[class] then return HORDE.Infusion_None end
    return self.Horde_Infusions[class]
end

function plymeta:Horde_HasInfusion(class, infusion)
    if not self.Horde_Infusions then return end
    if not self.Horde_Infusions[class] then return end
    return self.Horde_Infusions[class] == infusion
end

if CLIENT then
net.Receive("Horde_SyncInfusion", function(len, ply)
    LocalPlayer().Horde_Infusions = net.ReadTable()
end)
end

if SERVER then
function HORDE:InfuseWeapon(ply, class, infusion)
    if not ply.Horde_Infusions then ply.Horde_Infusions = {} end
    if not ply.Horde_Infusions[class] then ply.Horde_Infusions[class] = {} end
    if infusion == HORDE.Infusion_None then
        ply.Horde_Infusions[class] = nil
    else
        ply.Horde_Infusions[class] = infusion
        if infusion == HORDE.Infusion_Chrono then
            if not ply.Horde_Infusion_Chrono_Wave then ply.Horde_Infusion_Chrono_Wave = {} end
            if not ply.Horde_Infusion_Chrono_Wave[class] then
                ply.Horde_Infusion_Chrono_Wave = {}
            end
            ply.Horde_Infusion_Chrono_Wave[class] = HORDE.current_wave
        else
            ply.Horde_Infusion_Chrono_Wave = {}
        end
    end
end

local function hemo_damage(ply, npc, bonus, hitgroup, dmginfo)
    if not HORDE:IsSlashDamage(dmginfo) then
        bonus.more = bonus.more * 0.75
        dmginfo:SetDamageType(DMG_SLASH)
    end
    npc:Horde_AddDebuffBuildup(HORDE.Status_Bleeding, dmginfo:GetDamage() * 0.25, ply, dmginfo:GetDamagePosition())
end

local function concussive_damage(ply, npc, bonus, hitgroup, dmginfo)
    if not HORDE:IsBluntDamage(dmginfo) then
        bonus.more = bonus.more * 0.75
        dmginfo:SetDamageType(DMG_CLUB)
    end
    npc:Horde_AddStun(dmginfo:GetDamage() * 0.25)
end

local function flaming_damage(ply, npc, bonus, hitgroup, dmginfo)
    if not HORDE:IsFireDamage(dmginfo) then
        bonus.more = bonus.more * 0.75
        dmginfo:SetDamageType(DMG_BURN)
        --npc:Horde_AddDebuffBuildup(HORDE.Infusion_Concussive, dmginfo:GetDamage() * 0.3, ply, dmginfo:GetDamagePosition())
    end
end

local function arctic_damage(ply, npc, bonus, hitgroup, dmginfo)
    if not HORDE:IsColdDamage(dmginfo) then
        bonus.more = bonus.more * 0.75
        dmginfo:SetDamageType(DMG_REMOVENORAGDOLL)
    end
    npc:Horde_AddDebuffBuildup(HORDE.Status_Frostbite, dmginfo:GetDamage() * 0.25, ply, dmginfo:GetDamagePosition())
end

local function septic_damage(ply, npc, bonus, hitgroup, dmginfo)
    if not HORDE:IsPoisonDamage(dmginfo) then
        bonus.more = bonus.more * 0.75
        dmginfo:SetDamageType(DMG_NERVEGAS)
    end
    npc:Horde_AddDebuffBuildup(HORDE.Status_Break, dmginfo:GetDamage() * 0.25, ply, dmginfo:GetDamagePosition())
end

local function galvanizing_damage(ply, npc, bonus, hitgroup, dmginfo)
    if not HORDE:IsLightningDamage(dmginfo) then
        bonus.more = bonus.more * 0.75
        dmginfo:SetDamageType(DMG_SHOCK)
    end
    npc:Horde_AddDebuffBuildup(HORDE.Status_Shock, dmginfo:GetDamage() * 0.25, ply, dmginfo:GetDamagePosition())
end

local function quality_damage(ply, npc, bonus, hitgroup, dmginfo)
    bonus.increase = 0.20
    bonus.more = 1
    return true
end

local function impaling_damage(ply, npc, bonus, hitgroup, dmginfo)
    if hitgroup == HITGROUP_HEAD then
        bonus.increase = bonus.increase + 0.25
    else
        bonus.more = bonus.more * 0.75
    end
end

local function rejuvenating_damage(ply, npc, bonus, hitgroup, dmginfo)
    bonus.more = bonus.more * 0.75
end

local function siphoning_damage(ply, npc, bonus, hitgroup, dmginfo)
    bonus.more = bonus.more * 0.75
end

local function quicksilver_damage(ply, npc, bonus, hitgroup, dmginfo)
    local percent = ply:Horde_GetWeight() / ply:Horde_GetMaxWeight()
    if percent >= 0.85 then
        bonus.increase = bonus.increase + 0.3
    elseif percent >= 0.7 then
        bonus.increase = bonus.increase + 0.25
    elseif percent >= 0.6 then
        bonus.increase = bonus.increase + 0.15
    else
        bonus.increase = bonus.increase - 0.25
    end
end

local function chrono_damage(ply, npc, bonus, hitgroup, dmginfo)
    local curr_weapon = HORDE:GetCurrentWeapon(dmginfo:GetInflictor())
	if !IsValid(curr_weapon) then return end
    bonus.increase = math.min(0.30, bonus.increase - 0.20 + (HORDE.current_wave - ply.Horde_Infusion_Chrono_Wave[curr_weapon:GetClass()]) * 0.06)
end

local infusion_fns = {
    [HORDE.Infusion_None] = function () end,
    [HORDE.Infusion_Hemo] = hemo_damage,
    [HORDE.Infusion_Concussive] = concussive_damage,
    [HORDE.Infusion_Septic] = septic_damage,
    [HORDE.Infusion_Flaming] = flaming_damage,
    [HORDE.Infusion_Arctic] = arctic_damage,
    [HORDE.Infusion_Galvanizing] = galvanizing_damage,
    [HORDE.Infusion_Quality] = quality_damage,
    [HORDE.Infusion_Impaling] = impaling_damage,
    [HORDE.Infusion_Rejuvenating] = rejuvenating_damage,
    [HORDE.Infusion_Siphoning] = siphoning_damage,
    [HORDE.Infusion_Quicksilver] = quicksilver_damage,
    [HORDE.Infusion_Titanium] = siphoning_damage,
    [HORDE.Infusion_Chrono] = chrono_damage,
}

function HORDE:GetCurrentWeapon(inflictor)
    local curr_weapon = inflictor
    if inflictor:IsPlayer() then
        curr_weapon = inflictor:GetActiveWeapon()
    end
    return curr_weapon
end

hook.Add("Horde_OnPlayerDamagePre", "Horde_ApplyFusion", function (ply, npc, bonus, hitgroup, dmginfo)
    if not ply.Horde_Infusions then return end
    local inflictor = dmginfo:GetInflictor()
    local curr_weapon = HORDE:GetCurrentWeapon(inflictor)
    local infusion = ply.Horde_Infusions[curr_weapon:GetClass()]
    if not infusion then return end
    npc.hitgroup = hitgroup
    local res = infusion_fns[infusion](ply, npc, bonus, hitgroup, dmginfo)
    if res == true then return res end
end)

hook.Add("Horde_OnPlayerDamageTaken", "Horde_ApplyFusionDamageTaken", function (ply, dmg, bonus)
    if not ply.Horde_Infusions then return end
    local curr_weapon = HORDE:GetCurrentWeapon(ply)
	if !curr_weapon:IsValid() then return end
    local infusion = ply.Horde_Infusions[curr_weapon:GetClass()]
    if not infusion then return end
    if infusion == HORDE.Infusion_Titanium then
        bonus.less = bonus.less * (1 - 0.01 * HORDE.items[curr_weapon:GetClass()].weight)
    end
end)

hook.Add("Horde_OnNPCKilled", "Horde_ApplyFusionOnKill", function (victim, ply, wpn)
    if not ply.Horde_Infusions then return end
    local curr_weapon = HORDE:GetCurrentWeapon(ply)
    if not curr_weapon:IsValid() or not wpn:IsValid() then return end
    --if wpn:GetClass() ~= curr_weapon:GetClass() then return end
    local infusion = ply.Horde_Infusions[curr_weapon:GetClass()]
    if infusion == HORDE.Infusion_Siphoning then
        local healinfo = HealInfo:New({amount=1, healer=ply})
        HORDE:OnPlayerHeal(ply, healinfo)
    end
end)

net.Receive("Horde_BuyInfusion", function (len, ply)
    if not ply:IsValid() or not ply:Alive() then return end
    local class = net.ReadString()
    local infusion = net.ReadUInt(5)
    local price = 100 + HORDE.items[class].price / 5
    if ply:Horde_GetMoney() >= price then
        ply:Horde_AddMoney(-price)
        HORDE:InfuseWeapon(ply, class, infusion)
        net.Start("Horde_SyncInfusion")
            net.WriteTable(ply.Horde_Infusions)
        net.Send(ply)
        ply:Horde_SyncEconomy()
    end
end)

net.Receive("Horde_SellInfusion", function (len, ply)
    if not ply:IsValid() or not ply:Alive() then return end
    local class = net.ReadString()
    local ret_price = HORDE.items[class].price / 20
    ply:Horde_AddMoney(ret_price)
    HORDE:InfuseWeapon(ply, class, HORDE.Infusion_None)
    net.Start("Horde_SyncInfusion")
        net.WriteTable(ply.Horde_Infusions)
    net.Send(ply)
    ply:Horde_SyncEconomy()
end)
end