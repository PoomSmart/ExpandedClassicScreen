#import <SpringBoard/SBApplicationClassicMode.h>
#import <SpringBoardHome/SBHScreenType.h>

%hook SBApplication

- (SBApplicationClassicMode)_classicMode {
	SBApplicationClassicMode orig = %orig;
	return orig && orig < SBApplicationClassicModePad ? SBApplicationClassicModePhone5_5 : orig;
}

- (SBHScreenType)_screenTypeForClassicMode:(SBApplicationClassicMode)classicMode {
	return SBHScreenTypeiPhone6Plus;
}

%end
