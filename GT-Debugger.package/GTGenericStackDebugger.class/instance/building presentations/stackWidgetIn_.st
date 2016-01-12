stackWidgetIn: composite

	^ composite fastList	
		title: 'Stack';
		showOnly: 50;
		display: [:aSession | self retrieveStackFrom: aSession];
		format: [ :each | self formatStackEntry: each]