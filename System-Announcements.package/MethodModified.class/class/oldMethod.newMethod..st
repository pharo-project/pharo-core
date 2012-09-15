termporal for removal
oldMethod: oldMethod newMethod: newMethod
	(oldMethod class == newMethod class) 
		ifFalse: [ self error: 'The two methods don''t belong to the same class' ].
	(oldMethod selector == newMethod selector)
		ifFalse: [ self error: 'The two methods haven''t the same selector' ].
	^ self new
		oldMethod: oldMethod;
		newMethod: newMethod;
		yourself.