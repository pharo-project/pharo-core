destroy
	self onRenderThreadBlocking: [
		context ifNotNil: [ context delete ].
		renderer destroy.
		context := nil.
	]
	