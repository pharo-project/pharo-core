buttons behavior
instanceButtonLabel

	^ self showInstance
		ifTrue: [ self classLabel ]
		ifFalse: [ self instanceLabel ]