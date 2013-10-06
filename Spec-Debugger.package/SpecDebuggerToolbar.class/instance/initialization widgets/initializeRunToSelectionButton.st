initializeRunToSelectionButton

	self runToSelectionButton  
		label: 'Run to Here';
		state: false;
		askBeforeChanging: true;
		action: [ self runToSelectionAction ]