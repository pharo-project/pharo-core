onWithSubclasses: aClass
	^ self new 
		title: 'With all subclasses';
		environment: (self cache class: aClass with: #withAllSubclasses);
		yourself
	
	