topRendererOrSelf
	^owner
		ifNotNil: [ owner topRendererOrSelf ]