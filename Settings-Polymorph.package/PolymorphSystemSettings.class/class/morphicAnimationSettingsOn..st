morphic
morphicAnimationSettingsOn: aBuilder 
	(aBuilder setting: #useAnimation)
		label: 'Animation' translated;
		target: UITheme;
		targetSelector: #currentAnimationSettings;
		description: 'If true, some animations will be use when opening and closing windows' translated;
		noOrdering;
		with: [
			(aBuilder setting: #animateClosing)
				label: 'Animate closing' translated;
				description: 'If true, then windows closing is animated' translated.
			(aBuilder range: #animationDelay) 
				label: 'Delay' translated;
				description: 'The delay between each step of the window animation in milliseconds.' translated;
				selector: #delay;
				range: (0 to: 30).
			(aBuilder range: #animationNumberOfSteps) 
				label: 'Number of steps' translated;
				description: 'The number of steps in the window animation.' translated;
				selector: #numberOfSteps;
				range: (0 to: 100).
		]