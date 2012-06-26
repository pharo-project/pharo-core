test creation
createTestForClass: aClass

	| definition testClass className |

	aClass ifNil: [ ^ nil ].
	(aClass inheritsFrom: TestCase) ifTrue: [ ^ nil ].
	aClass isMeta ifTrue: [ ^ nil ].

	className := self buildTestClassNameFrom: aClass.
	testClass := self class environment 
		at: className
		ifPresent: [:class | class ]
		ifAbsent: [ 
			definition := self buildTestClassDefinitionFrom: aClass.
			testClass := self 
				compileANewClassFrom: definition
				notifying: nil
				startingFrom: self selectedClass.
			self class environment at: className.
			testClass comment: (self generateCommentForTestClass: testClass from: aClass)].
	self showGroups: false.
	self selectedPackage: testClass package.
	self selectedClass: testClass.
	self updateBothView.
	^ testClass