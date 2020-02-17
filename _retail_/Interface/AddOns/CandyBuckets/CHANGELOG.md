# CandyBuckets

## [v8.3.0.200202](https://github.com/Vladinator89/wow-addon-candybuckets/tree/v8.3.0.200202) (2020-02-02)
[Full Changelog](https://github.com/Vladinator89/wow-addon-candybuckets/compare/v8.2.5.191026...v8.3.0.200202)

- - TOC bump  
    - Fixed an issue where instance quests like the Lunar Elders would trigger an error report about being too far away. This was caused by the distance check and the fact that instances don't have coordinates available to us in the first place, so this behavior is checked for and disabled in this particular scenario to avoid these error messages.  
