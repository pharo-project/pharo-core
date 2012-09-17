browser compatibility
setClass: aClass selector: aSelector 
	
	| method protocol |
	method := aClass methodDict at: aSelector ifAbsent: [ nil ].
	protocol := method 
					ifNil: [ nil ]
					ifNotNil: [ method protocol ].
	self 
		showGroups: false;
		selectedPackage: aClass package;
		selectedClass: aClass;
		showInstance: aClass isMeta not;
		selectedCategory: protocol;
		selectedMethod: method
	