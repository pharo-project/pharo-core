menus behavior
runTestForAMethod: aMethod notifying: aBoolean priority: aPriority
	| testMethod testSemaphoreForMethod blockToEvaluate shouldAnnounce |
	
	testMethod := aMethod correspondingTestMethod.
	testSemaphoreForMethod := Semaphore new. 
	shouldAnnounce := aBoolean.
	testMethod ifNil: [ ^ self ].

	blockToEvaluate := [
		| vScroll testClass testResult |
		vScroll := methodWidget vScrollValue.
		
		testClass := testMethod methodClass.
		testResult := [ testClass run: testMethod selector ]
							on: Halt
							do: [ :e | 
								aBoolean
									ifTrue: [ 
										[ self runTestForAMethodWithAnHalt: aMethod ] fork.
										shouldAnnounce := false.
										TestAsserter classForTestResult new ]
									ifFalse: [
										TestAsserter classForTestResult new
											addFailure: (testClass selector: testMethod selector);
											yourself ]].
		testResult updateResultsInHistory.
		
		testSemaphoreForMethod signal.
						
		(aBoolean and: [testResult failures isEmpty not or: [ testResult errors isEmpty not ]])
			ifTrue: [ 
				testClass debug: testMethod selector ].
				
		ClassesIconsCache removeKey: aMethod methodClass ifAbsent: []. 
		WorldState addDeferredUIMessage: [ methodWidget vScrollValue: vScroll ]].
	
	aBoolean 
		ifTrue: [ blockToEvaluate forkAt: aPriority. ]
		ifFalse: [ blockToEvaluate value ].
	
	testSemaphoreForMethod wait.
	
	shouldAnnounce
		ifTrue: [| color |
			testMethod hasPassedTest ifTrue: [ color :=  Color green ].
			testMethod hasFailedTest ifTrue: [ color :=  Color yellow ].
			testMethod hasErrorTest ifTrue: [ color :=  Color red ].
			self
				notifyTitle: 'Test Finished' 
				contents: 'Method: ',testMethod methodClass asString, '>>#',testMethod selector asString
				color: color ].
	aBoolean ifFalse: [ testSemaphore signal ]