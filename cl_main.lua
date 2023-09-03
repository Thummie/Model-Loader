-- Request Model hash and load model
local function RequestModelHash(Model)
    if not HasModelLoaded(Model) then
        RequestModel(Model)
    end
    while not HasModelLoaded(Model) do
        Wait(1)
    end
end

exports('RequestModelHash', RequestModelHash)

-- Request animation dictionary and load animation
local function RequestAnimationDict(AnimDict)
    if not HasAnimDictLoaded(AnimDict) then
        RequestAnimDict(AnimDict)
    end
    while not HasAnimDictLoaded(AnimDict) do
        Wait(1)
    end
end

exports('RequestAnimDict', RequestAnimationDict)

-- Request Animation Set and load animation set
local function RequestAnimSetEvent(AnimSet)
    if not HasAnimSetLoaded(AnimSet) then
        RequestAnimSet(AnimSet)
    end
    while not HasAnimSetLoaded(AnimSet) do
        Wait(0)
    end
end

exports('RequestAnimSetEvent', RequestAnimSetEvent)

-- Reset Animation Set
local function ResetAnimSet()
    ResetPedMovementClipset(PlayerPedId())
    ResetPedWeaponMovementClipset(PlayerPedId())
    ResetPedStrafeClipset(PlayerPedId())
end

exports('ResetAnimSet', ResetAnimSet)

-- Load particle
local function LoadParticle(particle)
    if not HasNamedPtfxAssetLoaded(particle) then
        RequestNamedPtfxAsset(particle)
    end
    while not HasNamedPtfxAssetLoaded(particle) do
        Wait(0)
    end
    SetPtfxAssetNextCall(particle)
end

exports('LoadParticle', LoadParticle)
