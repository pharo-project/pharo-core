testing
testWithDefaultNamespace
	| newClass |
	
	newClass:= RGFactory current createClassNamed: #Object.

	self assert: (newClass parent = Smalltalk globals).
	self assert: (newClass realClass = Object).