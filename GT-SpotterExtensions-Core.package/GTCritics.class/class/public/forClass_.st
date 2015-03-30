forClass: aClass
	| subs |
	subs := aClass allSubclasses.
	^ {	self onClass: aClass. 
		self onClass: aClass withAll: subs. 
		self onClass: aClass all: subs }