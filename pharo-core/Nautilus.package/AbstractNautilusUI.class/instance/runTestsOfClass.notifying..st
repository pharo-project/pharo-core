private
runTestsOfClass: aClass notifying: aBoolean
	| size methods blockToEvaluate |

	size := 0.
	methods := OrderedCollection new.
	
	aClass methodDict
		do: [ :method | 
			method isTestMethod
				ifTrue: [ 
					size := size + 1.
					methods add: method ]].
	blockToEvaluate := [ methods do: [ :method | 
											self 
												runTestForAMethod: method 
												notifying: false ]].

	aBoolean 
		ifTrue: [ blockToEvaluate forkAt: Processor userBackgroundPriority ]
		ifFalse: [ blockToEvaluate value ].

	1 to: size do: [:e | testSemaphore wait ].
	
	aBoolean 
		ifTrue: [ 
			| color |
			aClass hasPassedTest ifTrue: [ color :=  Color green ].
			aClass hasFailedTest ifTrue: [ color :=  Color yellow ].
			aClass hasErrorTest ifTrue: [ color :=  Color red ].
			
			self 
				notifyTitle: 'Test Finished' 
				contents: 'Class: ', aClass name
				color: color ]