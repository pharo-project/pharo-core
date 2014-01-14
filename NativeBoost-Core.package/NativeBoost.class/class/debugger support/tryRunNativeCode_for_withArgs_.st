tryRunNativeCode: aCompiledMethod for: aReceiver withArgs: arguments
	"run only a native code of given method,
	and if it fails evaluate aFailBlock instead"
	| src node m |
	"self assert: (self isNativeMethod: aCompiledMethod)."
	
	src := String streamContents: [:str |
		str nextPutAll: 'NBDebug_stub'.
		1 to: aCompiledMethod numArgs do: [:i  |
			i = 1 
				ifTrue: [ str nextPutAll: ': ' ]
				ifFalse: [ str nextPutAll: ' with: ' ].
			str nextPutAll: 'arg'.
			i printOn: str.
		].
		str cr;
		nextPutAll: ' <primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >'; cr;
		nextPutAll: ' ^ ContextPart primitiveFailTokenFor: errorCode'.
	].

	node := Smalltalk compiler
		compile: src 
		in: aCompiledMethod methodClass
		classified: nil 
		notifying: nil 
		ifFail: [ ^ ContextPart primitiveFailTokenFor: nil ].

	m := node generate: aCompiledMethod trailer.
	m flushCache.
	m selector flushCache.
	
	^ m valueWithReceiver: aReceiver arguments: arguments.
	