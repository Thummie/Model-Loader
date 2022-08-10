-- Request Model hash and load model
function RequestModelHash(Model)
    RequestModel(Model)
      while not HasModelLoaded(Model) do
        Wait(1)
    end
end

exports('RequestModelHash', RequestModelHash)

-- Request animation dictionary and load animation
function RequestAnimationDict(AnimDict)
    RequestAnimDict(AnimDict)
    while not HasAnimDictLoaded(AnimDict) do
        Wait(1)
    end
end

exports('RequestAnimDict', RequestAnimationDict)

-- Request Animation Set and load animation set
function RequestAnimSetEvent(AnimSet)
    RequestAnimSet(AnimSet)
    while not HasAnimSetLoaded(AnimSet) do
        Wait(0)
    end
end

exports('RequestAnimSetEvent', RequestAnimSetEvent)

-- Reset Animation Set
function ResetAnimSet()
    ResetPedMovementClipset(PlayerPedId())
    ResetPedWeaponMovementClipset(PlayerPedId())
    ResetPedStrafeClipset(PlayerPedId())
end

exports('ResetAnimSet', ResetAnimSet)
