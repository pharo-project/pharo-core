private-handle registry
register: aHandle

	self registry ifNotNil: [ :reg |
		(self knownHandles includes: aHandle) ifTrue: [
			self error: 'Attempt to add already existing handle!' ].
		reg add: aHandle.
			^self ].
	self error: 'WeakArrays are not supported in this VM!' 