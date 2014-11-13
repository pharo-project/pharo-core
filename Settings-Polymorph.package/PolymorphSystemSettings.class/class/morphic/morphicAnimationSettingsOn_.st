morphicAnimationSettingsOn: aBuilder 
	(aBuilder setting: #useAnimation)
		label: 'Animation';
		target: UITheme;
		targetSelector: #currentAnimationSettings;
		description: 'If true, some animations will be use when opening and closing windows';
		noOrdering;
		with: [
			(aBuilder setting: #animateClosing)
				label: 'Animate closing';
				description: 'If true, then windows closing is animated'.
			(aBuilder range: #animationDelay) 
				label: 'Delay' ;
				description: 'The delay between each step of the window animation in milliseconds.';
				selector: #delay;
				range: (0 to: 30).
			(aBuilder range: #animationNumberOfSteps) 
				label: 'Number of steps';
				description: 'The number of steps in the window animation.';
				selector: #numberOfSteps;
				range: (0 to: 100).
		]