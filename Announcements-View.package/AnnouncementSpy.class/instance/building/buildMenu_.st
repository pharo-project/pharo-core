buildMenu: aMenuMorph
	^ aMenuMorph
		defaultTarget: self;
		add: 'open' selector: #open;
		add: 'clear' selector: #clear;
		yourself