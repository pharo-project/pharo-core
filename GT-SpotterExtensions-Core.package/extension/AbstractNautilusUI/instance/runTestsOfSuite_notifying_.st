runTestsOfSuite: aSuite notifying: aBoolean
	<demoOnly: 'this is very ugly code, a copy from the original implementation, adapted to aSuite'>
	|  blockToEvaluate result |

	blockToEvaluate := [
		[ 
		| classes |
		classes := (aSuite tests collect: [ :each | each class ]) asSet.
		classes do: [ :class | class resetHistory ].
		result := aSuite run.
		result updateResultsInHistory.
		classes do: [ :class | ClassesIconsCache removeKey: class ifAbsent: []. ].
		testSemaphore signal. ] on: Exception do:[:e | testSemaphore signal . e defaultAction]].

	aBoolean 
		ifTrue: [ blockToEvaluate forkAt: Processor userBackgroundPriority ]
		ifFalse: [ blockToEvaluate value ].

	testSemaphore
		initSignals;
		wait.
	
	aBoolean 
		ifTrue: [ 
			| color |
			color := Color gray.
			result hasPassed ifTrue: [ color :=  Color green ].
			result hasFailures ifTrue: [ color :=  Color yellow ].
			result hasErrors ifTrue: [ color :=  Color red ].
			
			self 
				notifyTitle: 'Test Finished' 
				contents: 'Class: ', aSuite name
				color: color ]