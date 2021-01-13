#define EPOCH_X 0.955313
#define EPOCH_WIDTH 0.03125
#define HUMANITY_Y 0.51
#define BIG_START 0.37
#define BIG_WIDTH 0.08
#define BIG_GAP 0.01
#define SMALL_START 0.64
#define SMALL_WIDTH 0.035
#define SMALL_GAP 0.0035

class RebalancedHUD
{
idd = -1;
onLoad = "uiNamespace setVariable ['RebalancedHUD', _this select 0]";
fadein = 0.5;
fadeout = 0.5;
duration = 10e10;
controlsBackground[] = {};
objects[] = {};

//---------------------------------------------------------------------------------------------------------------------

class Base {
    colorText[] = {0, 0, 0, 0};
    colorBackground[] = {0, 0, 0, 0};
    font = "EtelkaNarrowMediumPro";
    text = "";
};

class FloatingText : Base {
    type = 0;
    style = 0x02;
    shadow = 2;
    
    colorText[] = {1, 1, 1, 0.7};
    
    size = 0.016 * safeZoneH;
    sizeEx = 0.016 * safeZoneH;
    
    class Attributes {
        font = "EtelkaNarrowMediumPro";
        align = "center"; 
        valign = "bottom";
    };

    x = EPOCH_X * safezoneW + safezoneX;
    w = EPOCH_WIDTH * safezoneW;
    h = 0.0176 * safezoneH;
};

class EpochIcon : Base {
    type = 0;
    style = 0x30 + 0x100;
    access = 0;

    colorText[] = {1, 1, 1, 0.7};
    
    size = 0;
    sizeEx = 0;
    lineSpacing = 0;
    
    x = EPOCH_X * safezoneW + safezoneX;
    w = EPOCH_WIDTH * safezoneW;
    h = 0.0556 * safezoneH;
};

class Slot : Base {
    type = 13;
    style = 0;
    
    colorText[] = {1, 1, 1, 1};
    colorBackground[] = {0.2, 0.2, 0.2, 0.4};
    
    class Attributes {
        font = "EtelkaNarrowMediumPro";
        align = "left"; 
        valign = "bottom";
    };
    
    size = 0.012 * safezoneH;
    sizeEx = 0.012 * safezoneH;
};

class BigBackground : Slot {
    y = 0.9148 * safezoneH + safezoneY;
    w = BIG_WIDTH * safezoneW;
    h = 0.07 * safezoneH;
};

class BigIcon : BigBackground {
    type = 0;
    style = 0x30 + 0x800;
    colorText[] = {1, 1, 1, 1};
};

class SmallBackground : Slot {
    y = 0.9358 * safezoneH + safezoneY;
    w = SMALL_WIDTH * safezoneW;
    h = 0.048 * safezoneH;
};

class SmallIcon : SmallBackground {
    type = 0;
    style = 0x30 + 0x800;
    colorText[] = {1, 1, 1, 1};
};

class controls {
    //-----------------------------------------------------------------------------------------------------------------

    class HumanityBackground: EpochIcon {
        idc = 7000;
        text = "\z\addons\dayz_code\gui\status\status_bg.paa";
        y = HUMANITY_Y * safezoneH + safezoneY;
    };
    class HumanityIcon : EpochIcon {
        idc = 7010;
        text = "scripts\HUD\images\survivor.paa";
        y = HUMANITY_Y * safezoneH + safezoneY;
    };
    class HumanityValue : FloatingText {
        idc = 7020;
        y = (HUMANITY_Y + 0.0474) * safezoneH + safezoneY;
    };
    
    class BloodValue : FloatingText {
        idc = 7100;
        y = 0.8374 * safezoneH + safezoneY;
    };    

    class StatusText : FloatingText {
        idc = 7200;
        type = 13;

        colorBackground[] = {0.2, 0.2, 0.2, 0.4};
        x = safeZoneX + 0.7 * SafeZoneW; 
        y = safeZoneY + 0.9672 * SafeZoneH;
        w = 0.24 * safezoneW;
        h = 0.0176 * safezoneH;
    };
	class ResStatusText : FloatingText {
		idc = 7222;
		x = safeZoneX + 0.7 * SafeZoneW; //horizontal
		y = 0.9374 * safezoneH + safezoneY; //vertical
		w = 0.14 * safezoneW;
		h = 0.0176 * safezoneH;
    };	
};
}; 
