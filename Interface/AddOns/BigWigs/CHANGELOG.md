# BigWigs

## [v119](https://github.com/BigWigsMods/BigWigs/tree/v119) (2018-10-03)
[Full Changelog](https://github.com/BigWigsMods/BigWigs/compare/v118...v119)

- Update option files  
- bump version  
- Uldir/Mythrax: Reset the ruin counter on stage change.  
- Update deDE.lua (#553)  
- Uldir/Mythrax: Add counter to Imminent Ruin.  
- Options: Add checkbox for "Emphasize (me only)" which allows you to emphasize abilities only if they are casted on you. Cleanup the options display.  
- Core/BossPrototype: Add :SetInfoBarsByTable  
- Azeroth/Jiarak: Fix matriarch's call error.  
- Plugins/BossBlock: Add throne of the tides cinematic  
- Azeroth/Jiarak: Move Matriarch's call to cleu since hotfix already went through.  
- Uldir/Mother: Tweak  
- Uldir/Zekvoz: Fix Roiling Deceit scan & tweak Eye Beam scan.  
- Core/BossPrototype: Add :GetBossIdByGUID to scan boss units only.  
- Uldir/Mother: Improve beam timers and remove the extra info from bar text and locales (Mythic only)  
- Uldir/Vectis: Add missing :Log  
- Uldir/Vectis: Add a warning when having 6+ Lingering Infection stacks in Mythic, Add Proximity for Bursting Lesions, Remove Proximity from Gestate  
- Uldir/Ghuun: Fix bars stopping late on Reorigination Blast  
- Core/BossPrototype: Add :PlayVictorySound()  
- Uldir/Zul: Add a counter to Pool of Darkness  
- Uldir/Ghuun: Fix logic for Explosive Corruption timers  
- Uldir/Zekvoz: Add ME\_ONLY\_EMPHASIZE to eye beam.  
- Plumbing for ME\_ONLY\_EMPHASIZE  
- Clarify minimap icon tooltip  
- Azeroth/Jiarak: Import module  
- Plugins/BossBlock: Improve against cinematic false positives by also checking specific toys.  
- Stop creating "file missing" errors for git users, which are now expected to be using separate libraries.  
- Uldir: Fix some PlaySound usage.  
- Uldir/Zul: Fix the add spawn bars to state "soon".  
- Uldir/Zekvoz: Play "warning" instead when eye beam is on you.  
- Uldir/Vectis: Fix double "on you" print for omega vector.  
