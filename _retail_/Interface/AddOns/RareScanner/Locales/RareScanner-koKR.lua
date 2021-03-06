﻿-- Locale
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local AL = AceLocale:NewLocale("RareScanner", "koKR", false);

if AL then
	AL["ALARM_MESSAGE"] = "희귀 NPC를 표시만 합니다, 맵을 확인하십시오!"
	AL["ALARM_SOUND"] = "희귀 NPC에 대한 경보음"
	AL["ALARM_SOUND_DESC"] = "희귀 NPC가 미니맵에 표시될 때 효과음을 재생합니다."
	AL["ALARM_TREASURES_SOUND"] = "이벤트/보물에 대한 경보음"
	AL["ALARM_TREASURES_SOUND_DESC"] = "보물/상자 또는 이벤트가 미니맵에 표시될 때 효과음을 재생합니다."
	AL["AUTO_HIDE_BUTTON"] = "버튼과 미니어쳐 자동 숨김"
	AL["AUTO_HIDE_BUTTON_DESC"] = "버튼과 미니어쳐를 선택한 시간(초 단위) 후에 자동으로 숨깁니다. 0초를 선택했다면 버튼과 미니어쳐는 자동으로 숨겨지지 않습니다."
	AL["CLASS_HALLS"] = "직업 전당"
	AL["CLEAR_FILTERS_SEARCH"] = "모두 표시"
	AL["CLEAR_FILTERS_SEARCH_DESC"] = "이전 검색을 초기화하고 전체 목록을 보여줍니다."
	AL["CLICK_TARGET"] = "NPC를 선택하려면 클릭"
	AL["CMD_HELP1"] = "명령어 목록"
	AL["CMD_HIDE"] = "세계지도에서 RareScanner 아이콘 숨기기"
	AL["CMD_HIDE_EVENTS"] = "세계지도에서 RareScanner 이벤트 아이콘 숨기기"
	AL["CMD_HIDE_RARES"] = "세계지도에서 RareScanner 희귀몹 아이콘 숨기기"
	AL["CMD_HIDE_TREASURES"] = "세계지도에서 RareScanner 보물 아이콘 숨기기"
	AL["CMD_SHOW"] = "세계 지도에 RareScanner 아이콘 표시"
	AL["CMD_SHOW_EVENTS"] = "세계지도에 RareScanner 이벤트 아이콘 표시"
	AL["CMD_SHOW_RARES"] = "세계지도에 RareScanner 희귀몹 아이콘 표시"
	AL["CMD_SHOW_TREASURES"] = "세계지도에 RareScanner 보물 아이콘 표시"
	AL["CONTAINER"] = "상자"
	AL["DATABASE_HARD_RESET"] = "가장 효율적인 확장과 마지막 RareScanner 버전 이후 데이터베이스에 큰 변화가 발생하여 불일치를 피하기 위해 데이터베이스를 재설정해야했습니다. 불편을 드려 죄송합니다."
	AL["DISABLE_SEARCHING_RARE_TOOLTIP"] = "이 희귀 NPC에 대한 알림을 비활성화합니다."
	AL["DISABLE_SOUND"] = "소리로 알림 비활성화"
	AL["DISABLE_SOUND_DESC"] = "활성화하면, 소리로 알림을 받을 수 없습니다."
	AL["DISABLED_SEARCHING_RARE"] = "이 희귀 NPC에 대해 알림 비활성화"
	AL["DISPLAY"] = "표시"
	AL["DISPLAY_BUTTON"] = "버튼과 미니어쳐 표시 토글"
	AL["DISPLAY_BUTTON_CONTAINERS"] = "보물/상자 버튼 표시 전환"
	AL["DISPLAY_BUTTON_CONTAINERS_DESC"] = "보물/상자 버튼 표시를 토글합니다. 경보음 및 채팅 알림에는 영향을 미치지 않습니다."
	AL["DISPLAY_BUTTON_DESC"] = "버튼과 미니어쳐가 비활성화되면 다시 표시되지 않습니다. 이것은 알람음과 대화창 알림에는 영향을 미치지 않습니다."
	AL["DISPLAY_BUTTON_SCALE"] = "버튼과 미니어쳐의 크기"
	AL["DISPLAY_BUTTON_SCALE_DESC"] = "이 옵션은 버튼의 크기와 미니어쳐가 조정되며 원래 크기는 0.85입니다."
	AL["DISPLAY_CONTAINER_ICONS"] = "세계지도에서 상자 아이콘 표시 전환"
	AL["DISPLAY_CONTAINER_ICONS_DESC"] = "비활성화하면 상자/보물 아이콘이 세계지도에 표시되지 않습니다."
	AL["DISPLAY_EVENT_ICONS"] = "세계지도에서 이벤트 아이콘 표시 전환"
	AL["DISPLAY_EVENT_ICONS_DESC"] = "비활성화하면 이벤트 아이콘이 세계지도에 표시되지 않습니다."
	AL["DISPLAY_LOG_WINDOW"] = "로그 창 표시 전환"
	AL["DISPLAY_LOG_WINDOW_DESC"] = "비활성화하면 로그 창이 다시 표시되지 않습니다."
	AL["DISPLAY_LOOT_ON_MAP"] = "지도 툴팁에 전리품 표시"
	AL["DISPLAY_LOOT_ON_MAP_DESC"] = "아이콘 위로 마우스를 움직일 때 표시되는 툴팁에 NPC/상자 전리품 표시를 전환합니다."
	AL["DISPLAY_LOOT_PANEL"] = "전림품 획득 바 토글"
	AL["DISPLAY_LOOT_PANEL_DESC"] = "활성화하면, 발견된 NPC가 떨어뜨린 전리품을 바에 표시합니다."
	AL["DISPLAY_MAP_NOT_DISCOVERED_ICONS"] = "검색되지 않은 아이콘을 지도에 표시하도록 전환"
	AL["DISPLAY_MAP_NOT_DISCOVERED_ICONS_DESC"] = "비활성화하면 희귀 NPC(빨간색과 주황색 아이콘), 상자 또는 이벤트가 발견되지 않은 아이콘이 세계지도에 표시되지 않습니다."
	AL["DISPLAY_MAP_OLD_NOT_DISCOVERED_ICONS"] = "이전 확장의 경우 검색되지 않은 아이콘 표시를 전환합니다."
	AL["DISPLAY_MAP_OLD_NOT_DISCOVERED_ICONS_DESC"] = "비활성화하면 희귀 NPC(빨간색 및 주황색 아이콘), 상자 또는 이벤트가 발견되지 않은 아이콘은 이전 확장에 속하는 영역에 대해 세계지도에 표시되지 않습니다."
	AL["DISPLAY_MINIATURE"] = "미니어처 표시 전환"
	AL["DISPLAY_MINIATURE_DESC"] = "비활성화하면 미니어처가 다시 표시되지 않습니다."
	AL["DISPLAY_NPC_ICONS"] = "세계지도에서 희귀 NPC 아이콘 표시 전환"
	AL["DISPLAY_NPC_ICONS_DESC"] = "비활성화하면 희귀 NPC 아이콘이 세계지도에 표시되지 않습니다."
	AL["DISPLAY_OPTIONS"] = "표시 옵션"
	AL["DUNGEONS_SCENARIOS"] = "던전/시나리오"
	AL["ENABLE_MARKER"] = "대상 표시기 켜기/끄기"
	AL["ENABLE_MARKER_DESC"] = "이 기능이 활성화되면 메인 버튼을 클릭할 때 대상 위에 징표가 표시됩니다."
	AL["ENABLE_SCAN_CHAT"] = "채팅 메시지를 통해 희귀 NPC 검색 표시 전환"
	AL["ENABLE_SCAN_CHAT_DESC"] = "이 기능이 활성화되면 희귀 NPC가 나타날 때 소리를 내거나 희귀 NPC와 관련된 채팅 메시지가 감지될 때마다 시각적으로 경고를 합니다."
	AL["ENABLE_SCAN_CONTAINERS"] = "보물이나 상자 검색 토글"
	AL["ENABLE_SCAN_CONTAINERS_DESC"] = "활성화하면, 매번 보물이나 상자를 소리와 함께 시각적으로 미니 맵에 표시하여 알립니다."
	AL["ENABLE_SCAN_EVENTS"] = "이벤트 검색 토글"
	AL["ENABLE_SCAN_EVENTS_DESC"] = "활성화하면, 매번 이벤트를 소리와 함께 시각적으로 미니 맵에 표시하여 알립니다."
	AL["ENABLE_SCAN_GARRISON_CHEST"] = "주둔지 보물 검색 토글"
	AL["ENABLE_SCAN_GARRISON_CHEST_DESC"] = "활성화하면, 매번 주둔지 상자를 소리와 함께 시각적으로 미니 맵에 표시하여 알립니다."
	AL["ENABLE_SCAN_IN_INSTANCE"] = "인스턴스에서 검색 표시 전환"
	AL["ENABLE_SCAN_IN_INSTANCE_DESC"] = "이 기능이 활성화되면 애드온은 인스턴스(던전, 공격대 등)에 있는 동안 평소와 같이 작동합니다."
	AL["ENABLE_SCAN_ON_TAXI"] = "새나 배로 이동하는 동안 표시 전환"
	AL["ENABLE_SCAN_ON_TAXI_DESC"] = "이 기능이 활성화되면 운송 수단(비행기, 보트 등)을 사용하는 동안 애드온이 정상적으로 작동합니다."
	AL["ENABLE_SCAN_RARES"] = "희귀 NPC 검색 토글"
	AL["ENABLE_SCAN_RARES_DESC"] = "활성화하면, 매번 희귀 NPC를 소리와 함께 시각적으로 미니 맵에 표시하여 알립니다."
	AL["ENABLE_SEARCHING_RARE_TOOLTIP"] = "이 희귀 NPC에 대해 알림을 활성화합니다."
	AL["ENABLE_TOMTOM_SUPPORT"] = "TomTom 지원 켜기/끄기"
	AL["ENABLE_TOMTOM_SUPPORT_DESC"] = "이것이 활성화되면 엔티티의 찾은 좌표에 Tomtom의 웨이 포인트가 추가됩니다."
	AL["ENABLED_SEARCHING_RARE"] = "이 희귀 NPC에 대해 알림 활성화"
	AL["EVENT"] = "이벤트"
	AL["FILTER"] = "필터"
	AL["FILTER_CONTINENT"] = "대륙/범주"
	AL["FILTER_CONTINENT_DESC"] = "대륙 또는 범주 이름"
	AL["FILTER_NPCS_ONLY_MAP"] = "세계 지도에서만 필터 사용"
	AL["FILTER_NPCS_ONLY_MAP_DESC"] = "활성화 된 경우에도 필터링 된 NPC에서 경고가 표시되지만 세계지도에는 표시되지 않습니다. 비활성화하면 필터링 된 NPC에서 알림을 전혀받지 않습니다."
	AL["FILTER_RARE_LIST"] = "희귀 NPC 검색 필터"
	AL["FILTER_RARE_LIST_DESC"] = "희귀 NPC에 대한 검색을 토글합니다. 비활성화되면, NPC가 발견되도 알림을 받지 못합니다."
	AL["FILTER_ZONE"] = "지역"
	AL["FILTER_ZONE_DESC"] = "대륙 또는 범주 내부 지역"
	AL["FILTER_ZONES_LIST"] = "지역 목록"
	AL["FILTER_ZONES_LIST_DESC"] = "이 지역에서 알림을 토글합니다. 이 지역에서 희귀 NPC, 이벤트 또는 보물 발견했을 때 알림을 원하지 않는 경우 비활성화합니다."
	AL["FILTER_ZONES_ONLY_MAP"] = "세계 지도에서만 필터 사용"
	AL["FILTER_ZONES_ONLY_MAP_DESC"] = "활성화 된 경우 여전히 필터링 된 지역에 속하는 NPC로 부터 경고를 받지만 세계지도에는 표시되지 않습니다. 비활성화하면 필터링 된 영역에 속하는 NPC에서 경고를 받지 않습니다."
	AL["FILTERS"] = "희귀 NPC 필터"
	AL["FILTERS_SEARCH"] = "검색"
	AL["FILTERS_SEARCH_DESC"] = "목록 아래 필터할 NPC 이름을 입력하십시오."
	AL["GENERAL_OPTIONS"] = "기본 옵션"
	AL["JUST_SPAWNED"] = "%s 나타났습니다. 지도를 확인해보십시오!"
	AL["LEFT_BUTTON"] = "좌클릭"
	AL["LOG_WINDOW_AUTOHIDE"] = "기록된 NPC 버튼 자동 숨기기"
	AL["LOG_WINDOW_AUTOHIDE_DESC"] = "선택한 시간(분) 후 각 NPC 버튼을 숨긴다. 0분을 선택하면 로그 윈도우를 닫을 때까지 버튼이 유지되거나 최대 버튼 수에 도달할 때까지 버튼이 유지된다(이 경우 가장 오래된 버튼은 교체됨)."
	AL["LOG_WINDOW_OPTIONS"] = "로그 창 옵션"
	AL["LOOT_CATEGORY_FILTERED"] = "범주/하위범주에 대해 필터 활성화: %s/%s. 아이콘을 다시 클릭하거나 RareScanner 애드온 메뉴에서 이 필터를 비활성화할 수 있습니다."
	AL["LOOT_CATEGORY_FILTERS"] = "범주 필터"
	AL["LOOT_DISPLAY_OPTIONS"] = "표시 옵션"
	AL["LOOT_FILTER_SUBCATEGORY_LIST"] = "하위범주"
	AL["LOOT_MIN_QUALITY"] = "최소 전리품 등급"
	AL["LOOT_MIN_QUALITY_DESC"] = "전리품 획득 바에 표시할 최소 전리품 등급을 결정합니다."
	AL["LOOT_OPTIONS"] = "전리품 옵션"
	AL["LOOT_OTHER_FILTERS"] = "기타 필터"
	AL["LOOT_OTHER_FILTERS_DESC"] = "기타 필터"
	AL["LOOT_PANEL_OPTIONS"] = "전리품 획득 바 옵션"
	AL["LOOT_SUBCATEGORY_FILTERS"] = "하위범주 필터"
	AL["LOOT_TOGGLE_FILTER"] = "Alt+좌클릭으로 필터 켜기/끄기"
	AL["LOOT_TOOLTIP_POSITION"] = "전리품 획득 툴팁 위치"
	AL["LOOT_TOOLTIP_POSITION_DESC"] = "마우스를 아이콘 위로 가져갔을 때 표시되는 전리품 획득 툴팁을 어디에 표시할 지 결정합니다."
	AL["MAIN_BUTTON_OPTIONS"] = "주 버튼 옵션"
	AL["MAP_OPTIONS"] = "지도 옵션"
	AL["MAP_SCALE_ICONS"] = "아이콘의 크기"
	AL["MAP_SCALE_ICONS_DESC"] = "이렇게 하면 아이콘의 크기가 원래 크기 1로 조정됩니다."
	AL["MAP_TOOLTIP_ACHIEVEMENT"] = "%s 업적의 목표입니다."
	AL["MAP_TOOLTIP_DAYS"] = "일"
	AL["MARKER"] = "대상 표시기"
	AL["MARKER_DESC"] = "메인 버튼을 클릭할 때 대상 위에 추가할 마크를 선택합니다."
	AL["MESSAGE_OPTIONS"] = "메시지 옵션"
	AL["MIDDLE_BUTTON"] = "휠 클릭"
	AL["NAVIGATION_OPTIONS"] = "탐색 옵션"
	AL["NOT_TARGETEABLE"] = "선택할 수 없는 대상"
	AL["PROFILES"] = "프로필"
	AL["RAIDS"] = "공격대"
	AL["RESET_POSITION"] = "위치 리셋"
	AL["RESET_POSITION_DESC"] = "메인 버튼의 원래 위치를 복원한다."
	AL["SHOW_CHAT_ALERT"] = "대화창 알림 토글"
	AL["SHOW_CHAT_ALERT_DESC"] = "보물, 상자 또는 NPC를 발견할 때마다 대화창에 메시지를 표시합니다."
	AL["SHOW_RAID_WARNING"] = "공격대 경보 표시 켜기/끄기"
	AL["SHOW_RAID_WARNING_DESC"] = "보물, 상자 또는 NPC가 발견될 때마다 화면에 공격대 경보 표시"
	AL["SOUND"] = "소리"
	AL["SOUND_OPTIONS"] = "소리 옵션"
	AL["SOUND_VOLUME"] = "음량"
	AL["SOUND_VOLUME_DESC"] = "음량을 설정합니다."
	AL["TEST"] = "테스트 시작"
	AL["TEST_DESC"] = "알림 예제를 표시하려면 버튼을 누르세요. 패널을 다른 위치로 드래그 앤 드롭할 수 있습니다."
	AL["TOC_NOTES"] = "미니맵 스캐너. 매번 희귀 NPC, 보물/상자 또는 이벤트를 소리와 함께 시각적으로 미니 맵에 표시하여 알립니다."
	AL["TOGGLE_FILTERS"] = "필터 켜기/끄기"
	AL["TOGGLE_FILTERS_DESC"] = "모든 필터를 한 번에 켜고 끕니다."
	AL["TOOLTIP_BOTTOM"] = "아래쪽"
	AL["TOOLTIP_CURSOR"] = "커서위치"
	AL["TOOLTIP_LEFT"] = "왼쪽"
	AL["TOOLTIP_RIGHT"] = "오른쪽"
	AL["TOOLTIP_TOP"] = "위쪽"
	AL["UNKNOWN"] = "알수없음"
	AL["UNKNOWN_TARGET"] = "알 수 없는 대상"
	AL["ZONES_FILTER"] = "지역 필터"
	AL["ZONES_FILTERS_SEARCH_DESC"] = "아래 목록에 필터할 지역 이름을 입력합니다."

	-- CONTINENT names
	AL["ZONES_CONTINENT_LIST"] = {
		[9999] = "직업 전당"; --Class Halls
		[9998] = "다크문 섬"; --Darkmoon Island
		[9997] = "던전/시나리오"; --Dungeons/Scenarios
		[9996] = "공격대"; --Raids
		[9995] = "알수없음"; --Unknown
		[9994] = "Expedition islands"; --Expedition islands
	}
end