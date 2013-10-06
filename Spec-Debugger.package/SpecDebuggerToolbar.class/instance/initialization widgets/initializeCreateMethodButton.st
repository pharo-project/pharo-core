initializeCreateMethodButton

	self createMethodButton  
		label: 'Create';
		state: false;
		enabled: self shouldEnableCreateMethodButton;
		askBeforeChanging: true;
		action: [ self createMethodAction ]