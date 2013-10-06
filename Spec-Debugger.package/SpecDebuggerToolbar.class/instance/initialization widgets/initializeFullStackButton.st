initializeFullStackButton
		
	self fullStackButton
		label: 'Full Stack';
		state: false;
		enabled: self shouldEnableFullStackButton;
		askBeforeChanging: true;
		action: [ self fullStackAction ]