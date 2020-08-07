// creds to Jaidan for helping me fix some SDK issues & with hiding the bastard

%hook MTStaticColorPillView
	-(void)setPillColor:(UIColor *)color {
		color = [UIColor clearColor];
		return %orig;
	}
%end

%hook MTLumaDodgePillView
	-(void)setStyle:(long long)arg1 {
		%orig(0);
	}
%end