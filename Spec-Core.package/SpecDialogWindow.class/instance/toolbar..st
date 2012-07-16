accessing
toolbar: anObject
	toolbar := anObject.
	self focusOrder 
		removeAll;
		add: self model;
		add: self toolbar 