hostName = "[CNCA] DayZ Epoch Chernarus Qun471018450 (1.0.6.2/131129)";
password = "";
passwordAdmin = "";
maxPlayers = 50;
steamport = 2304;
steamqueryport = 2303;

motd[] = {"DayZ Epoch","Have fun!"};
motdInterval = 0;

logFile = "server_log.txt";
voteThreshold = 2;
voteMissionPlayers = 999;
timeStampFormat = "short";

vonCodecQuality = 11;
disableVoN = 0;
kickduplicate = 1;
verifySignatures = 2;
persistent = 1;
BattlEye = 1;
doubleIdDetected = "";

onUserConnected = "";
onUserDisconnected = "";
onUnsignedData = "kick (_this select 0)";
onHackedData = "kick (_this select 0)";
onDifferentData = "";

regularCheck = "";
requiredBuild = 131129;
class Missions
{
    class Mission1
    {
    	template = "DayZ_Epoch_11.Chernarus";
    	difficulty="veteran";
    };

};
