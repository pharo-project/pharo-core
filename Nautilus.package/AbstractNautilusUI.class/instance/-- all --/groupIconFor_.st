groupIconFor: aGroup
	| icon |
	GroupsIconsCache 
		at: aGroup 
		ifPresent: [:ic | 
			 ic class == IconicButtonStateHolder ifFalse: [ ^ ic ].
			^ ic asIconTargetting: self ].
	
	icon := IconicButton new 
				target: self;
				actionSelector: #restrictedBrowseGroups:;
				arguments: {{aGroup}};
				labelGraphic: (Smalltalk ui icons iconNamed: #groupIcon);
				color: Color transparent;
				extent: 15 @ 16;
				helpText: 'Browse restricted environment';
				borderWidth: 0. 
				
	GroupsIconsCache
		at: aGroup
		put: (IconicButtonStateHolder forNautilus: icon).
	^ icon