do-its
compileSelectionFor: anObject in: evalContext
	| methodNode method failed |
	 failed :=  false.
	methodNode :=  
		[
			self class evaluatorClass new
			compileNoPattern: self selectionAsStream
			in: anObject class
			context: evalContext
			notifying: self morph
			ifFail: [ failed :=  true ] ]
		on: OutOfScopeNotification
		do: [:ex | ex resume: true].
	failed ifTrue: [ ^ nil ].	
	^methodNode generateWithSource.
	