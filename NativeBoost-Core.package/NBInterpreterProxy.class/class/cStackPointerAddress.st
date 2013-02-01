accessing functions
cStackPointerAddress

	"to prevent recursion, we prohibit using stack pointer address when bootstrapping"
	NativeBoost forCurrentPlatform isBootstrapping ifTrue: [ ^ nil ].
	
	^ NativeBoost loadSymbol: #CStackPointer