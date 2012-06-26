tests
testClassRegistration
	"The class should be included in Smalltalk system dictionary."

	| aClass name materializedClass |
	"In this case we need that the class creation sends notification because of the last asssert."
	aClass := self withNotificationsNewClass.

	name := aClass name.
	self storeRemoveAndLoadStubPackage.

	materializedClass := 
		Smalltalk 
			at: name 
			ifAbsent: [ self signalFailure: 'The class should be included in Smalltalk system dictionary.' ].
			
	self assert: classFactory defaultCategory equals: (Smalltalk organization categoryOfElement: materializedClass name).
