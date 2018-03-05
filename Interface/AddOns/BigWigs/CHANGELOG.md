# BigWigs

## [v89](https://github.com/BigWigsMods/BigWigs/tree/v89) (2018-03-02)
[Full Changelog](https://github.com/BigWigsMods/BigWigs/compare/v88...v89)

- bump version  
- Antorus/Imonar: Fix Empowered Shrapnel Blast timers on longer fights, closes #443  
- Antorus/Argus: Fix Gifts' "only on me" option (#453)  
- Antorus/Argus: Don't announce sea/sky if "only on me" is enabled.  
- Core: Remove the module re-enable throttle and delay module disabling a little after a kill.  
- Core: Don't force engage with ENCOUNTER\_START if boss1 doesn't exist, let the module do it.  
- TombOfSargeras/TheDesolateHost: Use local variables instead of :BarTimeLeft() (#452)  
    * TombOfSargeras/TheDesolateHost: use local variables instead of :BarTimeLeft()  
    * "not stage ==" -> "stage ~="  
- TombOfSargeras/TheDesolateHost: Fix Tormented Cries target warning  
- Antorus/CovenofShivarra: remove SpellName calls  
- Antorus/CovenofShivarra: Update Mythic boss rotation  
- update zhCN/zhTW. (#451)  
- Core/Locales: Remove "Hard Mode".  
- Core/Locales: Add CL.interrupted\_by  
- Antorus/Argus: Add an extra Tortured Rage heroic timer  
- Antorus/Eonar: Add an extra Rain of Fel mythic timer  
- Loader: Add remaining BfA instanceIds for Littlewigs  
- Loader.lua: added entries for Shadowfang Keep, 3 MoP dungeons and 5 Cataclysm dungeons (#449)  
- TombOfSargeras/FallenAvatar.lua: Unregister CHAT\_MSG\_MONSTER\_YELL after we use it for the warmup timer.  
- Nighthold/Elisande: Unregister CHAT\_MSG\_MONSTER\_SAY after we use it for the warmup timer.  
- Antorus/Argus: Shortened the message on P3 adds' timer (#447)  
- Remove exclamation marks from common locale entries.  
- Antorus/Eonar: Add an extra Rain of Fel timer on normal.  
- Plugins/Pull: Tweaks  
- Temporary fix AddonMessage for BfA (#446)  
- Antorus/Trash: increased throttle for "Whirlwind" warnings for melee/tank players (#444)  
- Setup Battle for Azeroth for Littlewigs (#445)  
- Antorus/Argus: Add option to mark players affected by "Sentence of Sargeras" (#440 request), remove code no longer needed after 06/02 hotfix  
- Replaced some of the manual ScheduleTimer() calls with SayCountdown() (#436)  
- Antorus/Argus: moved Soulbomb's raid icon in the combined message (#442)  
