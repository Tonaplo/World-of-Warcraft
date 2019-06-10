local _, ns = ...

if ns:IsSameLocale("deDE") then
	local L = ns.L or ns:NewLocale()

	L.LOCALE_NAME = "deDE"

L["ALLOW_IN_LFD"] = "Im Dungeon Finder erlauben"
L["ALLOW_IN_LFD_DESC"] = "Rechtsklick auf Gruppen oder angemeldete Charaktere im Dungeon Finder, um den Raider.IO Profil-Link zu kopieren."
L["ALLOW_ON_PLAYER_UNITS"] = "Erlaube Rahmen für Spielereinheiten"
L["ALLOW_ON_PLAYER_UNITS_DESC"] = "Rechtsklick auf Einheitenfenster von Spielern, um den Raider.IO Profil-Link zu kopieren."
L["ALWAYS_SHOW_EXTENDED_INFO"] = "Rollenwertungen immer anzeigen"
L["ALWAYS_SHOW_EXTENDED_INFO_DESC"] = "Halte einen Modifikator gedrückt (Shift / Strg / Alt), um die Rollenwertung des Spielers im Tooltip anzuzeigen. Wenn du diese Option aktivierst, enthalten die Tooltips immer Rollenwerte."
L["API_DEPRECATED"] = "|cffFF0000Warnung!|r Das Addon |cffFFFFFF%s|r verwendet eine veraltete Funktion RaiderIO.%s. Diese Funktion wird in zukünftigen Versionen entfernt. Bitte ermutige den Autor von %s, sein Addon zu aktualisieren. Paket aufrufen: %s"
L["API_DEPRECATED_UNKNOWN_ADDON"] = "<Unbekanntes Addon>"
L["API_DEPRECATED_UNKNOWN_FILE"] = "<Unbekannte Addon Datei>"
L["API_DEPRECATED_WITH"] = "|cffFF0000Warnung!|r Das AddOn |cffFFFFFF%s|r verwendet eine veraltete Funktion RaiderIO.%s. Diese Funktion wird in zukünftigen Versionen entfernt. Bitte ermutige den Autor von %s auf die neue API RaiderIO.%s zu aktualisieren. Paket aufrufen: %s"
L["API_INVALID_DATABASE"] = "|cffFF0000Warnung!|r Ungültige RaiderIO Datenbank in |cffffffff%s|r entdeckt. Bitte aktualisiere alle Regionen und Fraktionen im RaiderIO Client oder installiere das Addon manuell neu."
L["BEST_FOR_DUNGEON"] = "Beste für Dungeon"
L["BEST_RUN"] = "Bester Durchlauf"
L["BEST_SCORE"] = "Beste M+ Wertung (%s)"
L["CANCEL"] = "Beenden"
L["CHANGES_REQUIRES_UI_RELOAD"] = [=[Ihre Änderungen wurden gespeichert, du musst jedoch die Benutzeroberfläche neu laden, damit diese wirksam werden.

Möchtest du das jetzt tun?]=]
L["CHECKBOX_DISPLAY_WEEKLY"] = "Wöchentlich anzeigen"
L["CHOOSE_HEADLINE_HEADER"] = "Mythic+ Tooltip Überschrift"
L["CONFIG_SHOW_TOOLTIPS_HEADER"] = "Mythic+ und Raid Tooltips "
L["CONFIG_WHERE_TO_SHOW_TOOLTIPS"] = "Wo man den Fortschritt von Mythic+ und Raid zeigt"
L["CONFIRM"] = "Bestätigen"
L["COPY_RAIDERIO_PROFILE_URL"] = "Kopiere Raider.IO Link"
L["COPY_RAIDERIO_URL"] = "Kopiere Raider.IO Link"
L["CURRENT_MAINS_SCORE"] = "Aktuelle Hauptcharakter M+ Wertung"
L["CURRENT_SCORE"] = "Aktuelle M+ Wertung"
L["DISABLE_DEBUG_MODE_RELOAD"] = "Du deaktivierst den Debug-Modus. Klicke auf Bestätigen, um das Interface neu zu laden."
L["DPS"] = "DPS"
L["DPS_SCORE"] = "DPS Wertung"
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_AD"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_ARC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_BRH"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_COEN"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_COS"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_DHT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_EOA"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_FH"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_HOV"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_KR"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_LOWR"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_ML"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_MOS"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_NL"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_SEAT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_SIEGE"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_SOTS"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_TD"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_TM"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_TOS"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_UNDR"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_UPPR"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_VOTW"] = ""--]] 
--[[Translation missing --]]
--[[ L["DUNGEON_SHORT_NAME_WM"] = ""--]] 
L["ENABLE_AUTO_FRAME_POSITION"] = "Plaziert den RaiderIO Profilrahmen automatisch"
L["ENABLE_AUTO_FRAME_POSITION_DESC"] = "Wenn du dies aktivierst, wird der M+ Profile-Tooltip neben dem Dungeon Finder-Rahmen oder dem Spieler-Tooltip angezeigt."
L["ENABLE_DEBUG_MODE_RELOAD"] = "Du aktivierst den Debug-Modus. Dies ist nur zu Test- und Entwicklungszwecken gedacht und führt zu einer zusätzlichen Speichernutzung. Klicke auf Bestätigen, um das Interface neu zu laden."
L["ENABLE_LOCK_PROFILE_FRAME"] = "Sperre meinen M+ Profilrahmen"
L["ENABLE_LOCK_PROFILE_FRAME_DESC"] = "Verhindert das Ziehen des M+ Profilrahmens. Dies hat keine Wirkung, wenn der M+ Profilrahmen automatisch positioniert wird."
L["ENABLE_NO_SCORE_COLORS"] = "Deaktiviere Wertungsfarben"
L["ENABLE_NO_SCORE_COLORS_DESC"] = "Deaktiviere Farben der Wertungen. Alle Wertungen werden weiß angezeigt."
L["ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS"] = "Erlaube Raider.IO Client Verbesserungen"
L["ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS_DESC"] = "Wenn du dies aktivierst, werden detaillierte Raider.IO-Profildaten angezeigt, die vom Raider.IO-Client für deine beanspruchten Charaktere heruntergeladen wurden."
L["ENABLE_SIMPLE_SCORE_COLORS"] = "Verwende einfache Mythic+ Wertungsfarben"
L["ENABLE_SIMPLE_SCORE_COLORS_DESC"] = "Zeigt nur Wertungen mit Standardfarben für Itemqualität an. Dies kann es für Personen mit Farbsehschwächen leichter machen, die Bewertungsstufen zu unterscheiden."
L["EXPORTJSON_COPY_TEXT"] = "Kopiere folgendes und füge es an einer beliebigen Stelle in |cff00C8FFhttps://raider.io|r ein, um alle Spieler nachzuschlagen."
L["GENERAL_TOOLTIP_OPTIONS"] = "Allgemeine Tooltip-Optionen"
L["GUILD_BEST_SEASON"] = "Gilde: Saisonbester"
L["GUILD_BEST_TITLE"] = "Gilde: Bester Titel"
L["GUILD_BEST_WEEKLY"] = "Gilde: Wöchentlicher Bester"
L["HEALER"] = "Heiler"
L["HEALER_SCORE"] = "Heiler Wertung"
L["HIDE_OWN_PROFILE"] = "Persönlichen Raider.IO Profil-Tooltip ausblenden"
L["HIDE_OWN_PROFILE_DESC"] = "Wenn diese Option aktiviert ist, wird dein eigener Raider.IO Profil-Tooltip nicht angezeigt, möglicherweise jedoch der anderen Spieler, sofern diese über einen verfügen."
L["INVERSE_PROFILE_MODIFIER"] = "Invertiere den Profil Tooltip Umschalter"
L["INVERSE_PROFILE_MODIFIER_DESC"] = [=[
Wenn du dies aktivierst, wird das Verhalten des Profil-Tooltip-Modifikators (Shift / Strg / Alt) umgekehrt: Halten, um die Ansicht zwischen persönlichen und Gruppenleiter-Profil oder Gruppenleiter und persönlichen Profil umzuschalten.]=]
L["KEYSTONE_COMPLETED_10"] = "+10-14 (SSK)"
L["KEYSTONE_COMPLETED_15"] = "+15 (SSK)"
L["KEYSTONE_COMPLETED_5"] = "+5-9 (SSK)"
L["LEGION_MAIN_SCORE"] = "Legion Hauptcharakterwertungen"
L["LEGION_SCORE"] = "Legion Wertung"
L["LOCKING_PROFILE_FRAME"] = "Raider.IO: M+ Profilrahmen sperren"
L["MAINS_BEST_SCORE_BEST_SEASON"] = "Hauptcharakter beste M+ Wertung (%s)"
L["MAINS_RAID_PROGRESS"] = "Hauptcharakter Fortschritt"
L["MAINS_SCORE"] = "Hauptcharakter M+ Wertung"
L["MAINS_SCORE_COLON"] = "Hauptcharakter Wertung:"
L["MODULE_AMERICAS"] = "Amerika"
L["MODULE_EUROPE"] = "Europa"
L["MODULE_KOREA"] = "Korea"
L["MODULE_TAIWAN"] = "Taiwan"
L["MY_PROFILE_TITLE"] = "Raider.IO Profil"
L["MYTHIC_PLUS_DB_MODULES"] = "Mythic+ Datenbank Module"
L["MYTHIC_PLUS_SCORES"] = "Mythic+ Wertung Tooltips"
L["NO_GUILD_RECORD"] = "Keine Gildenrekorde"
L["OPEN_CONFIG"] = "Öffne Konfigutration"
L["OUT_OF_SYNC_DATABASE_S"] = "|cffFFFFFF%s|r hat keine synchronisierte Fraktionsdaten der Horde/Allianz. Bitte aktualisiere die Raider.IO Client-Einstellungen, um beide Fraktionen zu synchronisieren."
L["OUTDATED_DATABASE"] = "Wertungen sind %d Tag(e) alt"
L["OUTDATED_DATABASE_HOURS"] = "Wertungen sind %d Stunde(n) alt"
L["OUTDATED_DATABASE_S"] = "|cffFFFFFF%s|r benutzt Daten die |cffFF6666%d|r Tag(e) alt sind. Bitte update das Addon für aktuellere Mythic Plus Wertungen."
L["PLAYER_PROFILE_TITLE"] = "Spieler M+ Profil"
L["PREV_SEASON_SUFFIX"] = "(*)"
L["PREVIOUS_SCORE"] = "Vorherige M+ Wertung (%s)"
L["PROFILE_BEST_RUNS"] = "Beste Durchläufe von Dungeon"
L["PROVIDER_NOT_LOADED"] = "|cffFF0000Warnung:|r |cffFFFFFF%s|r konnte keine Daten für die aktuelle Fraktion finden. Bitte überprüfe die |cffFFFFFF/raiderio|r Einstellungen und aktiviere die Tooltip-Daten für |cffFFFFFF%s|r."
L["RAID_ABBREVIATION_ULD"] = "ULD"
L["RAID_BOSS_ABT_1"] = "Weltenbrecher der Garothi"
L["RAID_BOSS_ABT_10"] = "Aggramar"
L["RAID_BOSS_ABT_11"] = "Argus der Zerrütter"
L["RAID_BOSS_ABT_2"] = "Teufelshunde des Sargeras"
L["RAID_BOSS_ABT_3"] = "Portalhüterin Hasabel"
L["RAID_BOSS_ABT_4"] = "Antorisches Oberkommando"
L["RAID_BOSS_ABT_5"] = "Eonar die Lebensbinderin"
L["RAID_BOSS_ABT_6"] = "Imonar der Seelenjäger"
L["RAID_BOSS_ABT_7"] = "Kin'garoth"
L["RAID_BOSS_ABT_8"] = "Varimathras"
L["RAID_BOSS_ABT_9"] = "Der Zirkel der Shivarra"
L["RAID_BOSS_BOD_1"] = "Champion des Lichts"
L["RAID_BOSS_BOD_2"] = "Grong, König des Dschungels"
L["RAID_BOSS_BOD_3"] = "Jadefeuermeister"
L["RAID_BOSS_BOD_4"] = "Opulenz"
L["RAID_BOSS_BOD_5"] = "Konklave der Auserwählten"
L["RAID_BOSS_BOD_6"] = "König Rastakhan"
L["RAID_BOSS_BOD_7"] = "Hochtüftler Mekkadrill"
L["RAID_BOSS_BOD_8"] = "Sturmwallblockade"
L["RAID_BOSS_BOD_9"] = "Lady Jaina Prachtmeer"
L["RAID_BOSS_ULD_1"] = "Taloc"
L["RAID_BOSS_ULD_2"] = "MUTTER"
L["RAID_BOSS_ULD_3"] = "Fauliger Verschlinger"
L["RAID_BOSS_ULD_4"] = "Zek'voz, Herold von N'Zoth"
L["RAID_BOSS_ULD_5"] = "Vectis"
L["RAID_BOSS_ULD_6"] = "Der Wiedergeborene Zul"
L["RAID_BOSS_ULD_7"] = "Mythrax der Auflöser"
L["RAID_BOSS_ULD_8"] = "G'huun"
L["RAID_DIFFICULTY_NAME_HEROIC"] = "Heroisch"
L["RAID_DIFFICULTY_NAME_MYTHIC"] = "Mythisch"
L["RAID_DIFFICULTY_NAME_NORMAL"] = "Normal"
L["RAID_DIFFICULTY_SUFFIX_HEROIC"] = "HC"
L["RAID_DIFFICULTY_SUFFIX_MYTHIC"] = "M"
L["RAID_DIFFICULTY_SUFFIX_NORMAL"] = "NHC"
L["RAID_ENCOUNTERS_DEFEATED_TITLE"] = "Schlachtzugsbegegnungen besiegt"
L["RAID_PROGRESS_TITLE"] = "Schlachtzugsfortschritt"
L["RAIDERIO_AVERAGE_PLAYER_SCORE"] = "Durchschn. Wertungen für Timed +%s"
L["RAIDERIO_BEST_RUN"] = "Raider.IO M+ Bester Durchlauf"
L["RAIDERIO_CLIENT_CUSTOMIZATION"] = "Raider.IO Client-Anpassung"
L["RAIDERIO_MP_BASE_SCORE"] = "Raider.IO M+ Basiswertung"
L["RAIDERIO_MP_BEST_SCORE"] = "Raider.IO M+ Wertung (%s)"
L["RAIDERIO_MP_SCORE"] = "Raider.IO M+ Wertung"
L["RAIDERIO_MP_SCORE_COLON"] = "Raider.IO M+ Wertung:"
L["RAIDERIO_MYTHIC_OPTIONS"] = "Raider.IO M+ Einstellungen"
L["RAIDING_DATA_HEADER"] = "Raider.IO Schlachtzugsfortschritt"
L["RAIDING_DB_MODULES"] = "Raiding-Datenbankmodule"
L["RELOAD_LATER"] = "Ich werde später neu laden"
L["RELOAD_NOW"] = "Jetzt neu laden"
L["SEASON_LABEL_1"] = "S1"
L["SEASON_LABEL_2"] = "S2"
L["SHOW_AVERAGE_PLAYER_SCORE_INFO"] = "Zeige durchschnittliche Wertungen für zeitliche Durchläufe"
L["SHOW_AVERAGE_PLAYER_SCORE_INFO_DESC"] = "Zeigt die durchschnittliche Raider.IO Wertung an, welche von Mitspielern in zeitlichen Durchgängen angezeigt wird. Dies ist in den Schlüsselstein Tooltips und Spieler Tooltips im Dungeon Finder sichtbar."
L["SHOW_BEST_MAINS_SCORE"] = "Zeige Hauptcharakter Mythic+ Wertung von der besten Saison"
L["SHOW_BEST_MAINS_SCORE_DESC"] = "Zeigt die beste Hauptcharakter Saisons Mythic+ Wertung und Schlachtzugsfortschritt des Spielers im Tooltipp an. Spieler müssen sich auf Raider.IO registriert haben und einen Charakter als Hauptcharakter deklarieren."
L["SHOW_BEST_RUN"] = "Zeige bester Mythic+ Durchlauf als Überschrift"
L["SHOW_BEST_RUN_DESC"] = "Zeigt den besten Mythic+ Durchlauf des Spielers aus der aktuellen Saison als Tooltip-Überschrift."
L["SHOW_BEST_SEASON"] = "Zeige beste Mythic+ Saison Wertung als Überschrift"
L["SHOW_BEST_SEASON_DESC"] = "Zeigt die beste Mythic+ Saison Wertung des Spielers als Tooltip-Überschrift an. Wenn das Ergebnis aus einer früheren Saison stammt, wird die Saison als Teil der Tooltip-Überschrift angezeigt."
L["SHOW_CLIENT_GUILD_BEST"] = "Zeigt die besten Gildenrekorde im Gruppen Finder mythische Dungeons an"
--[[Translation missing --]]
--[[ L["SHOW_CLIENT_GUILD_BEST_DESC"] = ""--]] 
L["SHOW_CURRENT_SEASON"] = "Zeige aktuelle Mythic+ Saison Wertung als Überschrift"
L["SHOW_CURRENT_SEASON_DESC"] = "Zeigt die aktuelle Mythic+ Saison Wertung des Spielers als Tooltip-Überschrift an."
L["SHOW_IN_FRIENDS"] = "Zeigt Tooltips in der Freundesliste an"
L["SHOW_IN_FRIENDS_DESC"] = "Zeige Mythic+ Wertung wenn du mit der Maus über deine Freunde fährst."
L["SHOW_IN_LFD"] = "Zeigt Tooltips im Dungeon Finder an"
L["SHOW_IN_LFD_DESC"] = "Zeige Mythic+ Wertung wenn du mit der Maus über die Gruppe oder angemeldete Spieler gehst."
L["SHOW_IN_SLASH_WHO_RESULTS"] = "Zeige in \"/ wer\" Ergebnissen an"
L["SHOW_IN_SLASH_WHO_RESULTS_DESC"] = "Zeige Mythic+ Wertung, wenn du nach jemanden speziellem mit \"/wer\" suchst. "
L["SHOW_IN_WHO_UI"] = "Zeigt Tooltips in \"Wer Liste\"-Fenster an"
L["SHOW_IN_WHO_UI_DESC"] = "Zeige Mythic+ Wertung, wenn du mit der Maus über den \"Wer Ergebnisse Dialog\" gehst."
L["SHOW_KEYSTONE_INFO"] = "Zeigt Basis Raider.IO Wertung für Schlüsselsteine an"
L["SHOW_KEYSTONE_INFO_DESC"] = "Fügt Basis Raider.IO Wertung für Schlüsselsteine in deinen Tooltips hinzu. Zeigt außerdem den besten Durchlauf des Dungeons für jeden Spieler in deiner Gruppe an."
L["SHOW_LEADER_PROFILE"] = "Erlaube Raider.IO Profil Tooltip Modifizierer"
L["SHOW_LEADER_PROFILE_DESC"] = "Halten Sie einen Modifikator (Umschalt / Strg / Alt) gedrückt, um den Profil-Tooltip zwischen \"persönliches / Gruppenleiter Profil\" umzuschalten."
L["SHOW_MAINS_SCORE"] = "Zeigt Hauptcharakter M+ Wertung und Fortschritt in den Tooltips an"
L["SHOW_MAINS_SCORE_DESC"] = "Zeigt die Wertung des Hauptcharakters des Spielers für die aktuelle Saison an. Die Spieler müssen sich auf Raider.IO registriert haben und einen Charakter als Hauptcharakter gesetzt haben."
L["SHOW_ON_GUILD_ROSTER"] = "Zeigt Tooltips an Gilden- und Community-Fenster an"
L["SHOW_ON_GUILD_ROSTER_DESC"] = "Zeige Mythic+ Wertung, wenn du mit der Maus über Gildenmitglieder im Gildenfenster fährst."
L["SHOW_ON_PLAYER_UNITS"] = "Zeige auf Einheitenfenster von Spielern"
L["SHOW_ON_PLAYER_UNITS_DESC"] = "Zeige Mythic+ Wertung, wenn du mit der Maus über Spieler Einheitenfenster fährst."
L["SHOW_RAID_ENCOUNTERS_IN_PROFILE"] = "Zeigt Schlachtzugsbegegnungen im Profil-Tooltip an"
L["SHOW_RAID_ENCOUNTERS_IN_PROFILE_DESC"] = "Wenn diese Option aktiviert ist, wird der Schlachtzugsbegegnungs-Fortschritt in den Raider.IO Profil-Tooltips angezeigt"
L["SHOW_RAIDERIO_BESTRUN_FIRST"] = "(Experimentell) Priorisiert das Anzeigen von Raider.IO Bester Lauf"
L["SHOW_RAIDERIO_BESTRUN_FIRST_DESC"] = "Dies ist eine experimentelle Funktion. Anstatt die Raider.IO Wertung als erste Zeile anzuzeigen, zeigt es den besten Lauf des Spielers."
L["SHOW_RAIDERIO_PROFILE"] = "Zeige Raider.IO Profil Tooltip"
L["SHOW_RAIDERIO_PROFILE_DESC"] = "Zeigt den Raider.IO Profil Tooltip an"
L["SHOW_ROLE_ICONS"] = "Rollensymbole in Tooltips anzeigen"
L["SHOW_ROLE_ICONS_DESC"] = "Wenn diese Option aktiviert ist, werden die Hauptrollen des Spielers in Mythic+ in den Tooltips angezeigt."
L["SHOW_SCORE_IN_COMBAT"] = "Zeige Wertung im Kampf"
L["SHOW_SCORE_IN_COMBAT_DESC"] = "Deaktiviere die Option, um die Auswirkungen auf die Spielleistung zu minimieren, während du Spieler während des Kampfes mit \"mausüber\" inspizierst"
L["TANK"] = "Tank"
L["TANK_SCORE"] = "Tank Wertung"
L["TIMED_10_RUNS"] = "Zeitliche +10-14 Durchläufe"
L["TIMED_15_RUNS"] = "Zeitliche +15 Durchläufe"
L["TIMED_20_RUNS"] = "Zeitliche +20 Durchläufe"
L["TIMED_5_RUNS"] = "Zeitliche +5-9 Durchläufe"
L["TOOLTIP_CUSTOMIZATION"] = "Tooltip Anpassungen"
L["TOOLTIP_PROFILE"] = "Profil Tooltip Anpassungen"
L["TOTAL_MP_SCORE"] = "Mythic+ Wertung "
L["TOTAL_RUNS"] = "Gesamtanzahl der BFA-Läufe"
L["UNKNOWN_SCORE"] = "Unbekannt"
L["UNKNOWN_SERVER_FOUND"] = "|cffFFFFFF%s|r hat einen neuen Server gefunden. Bitte schreibe folgende information auf: |cffFF9999{|r |cffFFFFFF%s|r |cffFF9999,|r |cffFFFFFF%s|r |cffFF9999}|r . Danach schicke diese den Entwicklern. Danke!"
L["UNLOCKING_PROFILE_FRAME"] = "Raider.IO: Entsperre den M+ Profilrahmen."
L["USE_ENGLISH_ABBREVIATION"] = "Englische Abkürzungen für Dungeons erzwingen"
L["USE_ENGLISH_ABBREVIATION_DESC"] = "Wenn diese Option aktiviert ist, werden die für Dungeons verwendeten Abkürzungen überschrieben um die englische Version zu sein, anstatt Ihre aktuelle Sprache."
L["WARNING_DEBUG_MODE_ENABLE"] = "|cffFFFFFF%s|r Der Debug-Modus ist aktiviert. Sie können ihn deaktivieren, indem Sie |cffFFFFFF/raiderio debug|r eingeben."
L["WARNING_LOCK_POSITION_FRAME_AUTO"] = "RaiderIO: Ihr müsst zuerst die automatische Positionierung des M+ Profils deaktivieren."


	ns.L = L
end
