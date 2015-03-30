onClass: aClass withAll: aCollection
	^ self new 
		title: 'With all subclasses';
		environment: (self cache class: aClass with: #withAllSubclasses classes: {aClass}, aCollection);
		yourself
	
	