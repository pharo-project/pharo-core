value: anObject1 value: anObject2 value: anObject3
	self ensureReceiver ifFalse: [ ^ nil ].
	
	^self receiver 
		perform: selector 
		with: anObject1
		with: anObject2
		with: anObject3