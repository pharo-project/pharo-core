endPC
	<flExtensionOf: #BlockClosure isSource: true>
	^ 'endPC
	^self blockCreationBytecodeMessage arguments last + startpc - 1'