[Main]
Version = 5
;Threads = 0  
; Default Value is the number of CPU Cores Detected (max value is 6, min value is 2)
Randomize Config File = false
;This is a legacy option to randomize config file for Arma2 Servers. Only for Windows Builds


[Rcon]
;; This is functional, should be working fine. Just needs abit of testing on a $
;; Allow for changing Address for those running server in a VM environment.
IP = 127.0.0.1
Port = 2302

;; Rcon Password i.e Battleye/beserver.cfg
Password = password

;; Bad Player Name Checks
;;		This will only work if your mission / mod has started extDB2 Rcon. i.e 9:START_RCON:RCON
Bad Playername Enable = true
Bad Playername Kick Message = Bad Player Name

;; By default : is a bad character (used as seperator for extDB2 Calls (this is hardcoded in)
Bad Playername Strings = (:):{:}
;;Bad Playername Regex_1 = [:alnum:]
;;Bad Playername Regex_2 = [:alnum:]
;;Bad Playername Regex_3 = [:alnum:]

;; Whitelisting / Reserve Slots
;;		This will only work if your mission / mod has started extDB2 Rcon. i.e 9:START_RCON:RCON
Whitelist Enable = false
Whitelist Kick Message = Only Reserved Slots Left
Whitelist Public Slots = 999

;; Database settings to use (Optional)
Whitelist Database = MySQL_Example
Whitelist SQL Prepared Statement = SELECT CASE WHEN EXISTS(SELECT UID FROM PlayerInfo WHERE BattlEyeGUID=? AND Whitelisted=1) THEN 1 ELSE 0 END
Whitelist Kick on SQL Query Failed = false

;; Hardcoded BEGuids for whitelisted players
;Whitelist BEGuids = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy

[Steam]
;; This is for VAC Protocol for VAC Bans + Steam Friends.
;; https://steamcommunity.com/dev/apikey
API Key = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

[VAC]
;; This feature requires Steam + Rcon to be enabled.
;; Also this feature is called via SQF Code atm, i.e it doesn't auto detect players joining server yet....
Auto Ban = false

;; For Player to get banned ( their total VAC Bans => NumberOfVACBans)  AND ( Days Since their Last Ban was <= DaysSinceLastBan)
;; This is also used extDB Protocol VAC:VACBanned returned results

NumberOfVACBans = 1
DaysSinceLastBan = 999999999
BanDuration = 1
;; 0 = Forever, otherwise its x Minutes
BanMessage = Steam VAC Banned

[Log]
;; Flush Logs after each write, more work on Harddrive
Flush = true

[exile]
Type = MySQL
Name = exile
Username = root
Password = 
IP = 127.0.0.1
Port = 3306
minSessions = 2
idleTime = 60
; Really should only use this if MySQL server is external. Also only for MySQL
compress = false
; Recommend you turn this on  http://dev.mysql.com/doc/refman/5.6/en/mysql-command-options.html#option_mysql_secure-auth
Secure Auth = true

[SQLite_Example]
Type = SQLite
Name = sqlite.db

minSessions = 1
; minSession Default Value = 1

;maxSessions = 4
; maxSession Default Value = number of Main->Threads
; 	You really should leave this value alone
idleTime = 60
; idleTime no Default Value yet, needs to be defined.
; 	idleTime is the time before a database session is stopped if not used. 
;	If Database Sessions are greater than minSessions
