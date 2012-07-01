evaluating
value: anObject1 value: anObject2 
	self ensureReceiver ifFalse: [ ^ nil ].
	
	^self receiver 
		perform: selector 
		with: anObject1
		with: anObject2