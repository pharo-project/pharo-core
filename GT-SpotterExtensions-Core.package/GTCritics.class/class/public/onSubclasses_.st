onSubclasses: aClass
	^ self new 
		title: 'Subclasses';
		environment: (self cache class: aClass with: #allSubclasses);
		yourself
	
	