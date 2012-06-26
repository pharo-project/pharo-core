instance creation
on: anObject label: getTextSelector
	| instance |
	instance := super new.
	instance model: anObject.
	instance textSelector: getTextSelector.
	^ instance 