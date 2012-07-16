as yet unclassified
testSubclasses
	| subclasses |
	SystemNavigation new allClassesDo: [ :cls|
		self assert: (cls superclass subclasses includes: cls)]