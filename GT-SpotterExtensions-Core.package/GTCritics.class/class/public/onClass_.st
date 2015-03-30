onClass: aClass
	^ self new 
		title: aClass name;
		environment: (self cache class: aClass);
		yourself