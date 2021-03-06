SWEP.Base = "dangumeleebase"
SWEP.AdminSpawnable = true
SWEP.AutoSwitchTo = false
SWEP.Slot = 0
SWEP.PrintName = "Steel Long Sword"
SWEP.Author = "Bread"
SWEP.Spawnable = true
SWEP.AutoSwitchFrom = false
SWEP.Weight = 5
SWEP.Category = "Melee Arts 2 (Medieval)"
SWEP.SlotPos = 1
SWEP.Purpose = "A schlong sword"
SWEP.ViewModelFOV = 100
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/models/danguyen/c_zweihander.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false
SWEP.UseHands = true
-- this is going to be set to false by default because it is for an upcoming custom gamemode and i dont feel like changing the base or manually inputting this sorry famq
SWEP.CanThrow = false
--STAT RATING (1-6)
SWEP.Type = 1 --1: Blade, 2: Axe, 3:Bludgeon, 4: Spear
SWEP.Strength = 5 -- 1-2: Small Weapons, 3-4: Medium Weapons (e.g crowbar), 5-6: Heavy Weapons (e.g Sledgehammers and Greatswords). Strength affects throwing distance and force
SWEP.Speed = 2 -- 1-2: Slow, 3-4: Decent, 5-6: Fast
SWEP.Tier = 4 -- General rating based on how good/doodoo the weapon is
--SWEPs are dumb (or I am) so we must state the weapon name again
SWEP.WepName = "ma_longsword"
--Stamina Costs
SWEP.PriAtkStamina = 20
SWEP.ThrowStamina = 5
SWEP.BlockStamina = 10
SWEP.ShoveStamina = 5
--Primary Attack Charge Values
SWEP.Charge = 0
SWEP.ChargeSpeed = 0.27
SWEP.DmgMin = 40
SWEP.DmgMax = 69
SWEP.Delay = 2
SWEP.TimeToHit = 0.1
SWEP.AttackAnimRate = 0.8
SWEP.Range = 70
SWEP.Punch1 = Angle(-2, 0, 0)
SWEP.Punch2 = Angle(5, 0, -2)
SWEP.HitFX = "bloodsplat"
SWEP.IdleAfter = true
--Throwing Attack Charge Values
SWEP.Charge2 = 0
SWEP.ChargeSpeed2 = 0.3
SWEP.DmgMin2 = 7
SWEP.DmgMax2 = 25
SWEP.ThrowModel = "models/aoc_weapon/w_longsword.mdl"
SWEP.ThrowMaterial = ""
SWEP.ThrowScale = 1
SWEP.ThrowForce = 1250
SWEP.FixedThrowAng = Angle(0, 90, 0)
SWEP.SpinAng = Vector(1500, 0, 0)
--HOLDTYPES
SWEP.AttackHoldType = "grenade"
SWEP.Attack2HoldType = "melee2"
SWEP.ChargeHoldType = "melee"
SWEP.IdleHoldType = "melee2"
SWEP.BlockHoldType = "slam"
SWEP.ShoveHoldType = "fist"
SWEP.ThrowHoldType = "grenade"
--SOUNDS
SWEP.SwingSound = Sound("katanaslash2.mp3")
SWEP.Hit1Sound = "ambient/machines/slicer4.wav"
SWEP.Hit2Sound = "ambient/machines/slicer3.wav"
SWEP.Hit3Sound = "ambient/machines/slicer4.wav"
SWEP.Impact1Sound = "swordclash1.wav"
SWEP.Impact2Sound = "swordclash2.wav"

SWEP.ViewModelBoneMods = {
    ["TrueRoot"] = {
        scale = Vector(1, 1, 1),
        pos = Vector(-2.037, 0, -4.259),
        angle = Angle(-12.223, 0, 0)
    },
    ["LeftArm_1stP"] = {
        scale = Vector(1, 1, 1),
        pos = Vector(0, -1.668, 2.407),
        angle = Angle(0, 0, 0)
    },
    ["RW_Weapon"] = {
        scale = Vector(0.009, 0.009, 0.009),
        pos = Vector(0, 0, 0),
        angle = Angle(0, 0, 0)
    },
    ["Root"] = {
        scale = Vector(1, 1, 1),
        pos = Vector(0, 0, 0),
        angle = Angle(-7.778, 0, 0)
    }
}

SWEP.NextFireShove = 0
SWEP.NextFireBlock = 0
SWEP.NextStun = 0
SWEP.DefSwayScale = 1.0
SWEP.DefBobScale = 1.0
SWEP.StunPos = Vector(0, 0, 0)
SWEP.StunAng = Vector(-14.775, 0, 43.618)
SWEP.ShovePos = Vector(-6.633, 0.804, 6.03)
SWEP.ShoveAng = Vector(0, 47.136, -49.246)
SWEP.RollPos = Vector(0, 0, 0)
SWEP.RollAng = Vector(-33.065, 0, 0)
SWEP.ThrowPos = Vector(-4.824, -7.437, 5.627)
SWEP.ThrowAng = Vector(100, 30.954, 9.848)
SWEP.WhipPos = Vector(0, -8.643, 3.417)
SWEP.WhipAng = Vector(56.985, -0.704, 2.813)
SWEP.FanPos = Vector(-1.611, -9.849, -2.411)
SWEP.FanAng = Vector(54.874, 0, 70)
SWEP.WallPos = Vector(-0.601, -11.056, -9.65)
SWEP.WallAng = Vector(42.915, 0, 0)

function SWEP:AttackAnimation()
    self.Weapon.AttackAnimRate = 1.8
    self.Punch1 = Angle(5, 10, 0)
    self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
end

function SWEP:AttackAnimation2()
    self.Weapon.AttackAnimRate = 1.6
    self.Punch1 = Angle(0, -15, 0)
    self.Weapon:SendWeaponAnim(ACT_VM_HITRIGHT)
end

function SWEP:AttackAnimation3()
    self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
end

SWEP.VElements = {
    ["hammer"] = {
        type = "Model",
        model = "models/aoc_weapon/w_longsword.mdl",
        bone = "RW_Weapon",
        rel = "",
        pos = Vector(1, 0.1, 12),
        angle = Angle(-90, -180, 0),
        size = Vector(1, 1, 1),
        color = Color(255, 255, 255, 255),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {}
    }
}

SWEP.WElements = {
    ["axe"] = {
        type = "Model",
        model = "models/aoc_weapon/w_longsword.mdl",
        bone = "ValveBiped.Bip01_R_Hand",
        rel = "",
        pos = Vector(4.595, 0.289, -7.582),
        angle = Angle(94.763, -11.388, 120),
        size = Vector(0.95, 0.95, 0.95),
        color = Color(255, 255, 255, 255),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {}
    }
}