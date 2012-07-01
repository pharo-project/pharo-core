as yet unclassified
testSubclasses
	| subclasses |
	SystemNavigation default allClassesDo: [ :cls|
		self assert: (cls superclass subclasses includes: cls)]