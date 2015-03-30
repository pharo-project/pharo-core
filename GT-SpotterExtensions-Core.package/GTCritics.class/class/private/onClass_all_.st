onClass: aClass all: aCollection
	^ self new 
		title: 'Subclasses';
		environment: (self cache class: aClass with: #allSubclasses classes: aCollection);
		yourself
	
	