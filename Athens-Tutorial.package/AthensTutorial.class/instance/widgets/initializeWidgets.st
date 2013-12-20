initializeWidgets 
	self instantiateModels: #(
		textpane TextModel 
		doit ButtonModel
		next ButtonModel
		prev ButtonModel
	).
	
	prev 
		label: '<-';
		state: false.
		
	next 
		label: '->';
		state: false.
	
	doit
		label: 'do it';
		state: false.
	
	textpane doItReceiver: self viewMorph.
	textpane aboutToStyle: true.
	
	self updateContents.
