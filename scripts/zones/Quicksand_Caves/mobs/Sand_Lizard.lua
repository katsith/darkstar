-----------------------------------
-- Area: Quicksand Caves
--  MOB: Sand Lizard
-- Note: PH for Nussknacker
-----------------------------------
local ID = require("scripts/zones/Quicksand_Caves/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 817, 1, dsp.regime.type.GROUNDS)
end

function onMobDespawn(mob)
    phOnDespawn(mob, ID.mob.NUSSKNACKER_PH, 5, 3600) -- 1 hour
end
