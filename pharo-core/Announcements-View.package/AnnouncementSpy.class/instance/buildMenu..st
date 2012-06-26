building
buildMenu: aMenuMorph
	^ aMenuMorph
		defaultTarget: self;
		add: 'open' action: #open;
		add: 'clear' action: #clear;
		yourself