*NautilusCommon
correspondingForTest
	"Return the unit test that correspond to me. If it does not exist, it returns myself. 
	 Return the tested class if sent to a class"
	
	| symbol |
	^ (self inheritsFrom: TestCase)
		ifTrue: [ 
			| i |
			i := self name indexOfSubCollection: 'Test'.
			symbol := Symbol readFromString: ('#', self name copyReplaceAll: 'Test' with: '' ).
			Smalltalk at: symbol ifAbsent: [ self ]]
		ifFalse: [
			symbol := Symbol readFromString: ('#', self name, 'Test').
			Smalltalk at: symbol ifAbsent: [ self ]]