tryRunNativeCode: aCompiledMethod for: aReceiver withArgs: arguments
	"run only a native code of given method,
	and if it fails evaluate aFailBlock instead"
	| src m |
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

	m := Smalltalk compiler new 
		source: src;
		class: aCompiledMethod methodClass;
		compiledMethodTrailer: aCompiledMethod trailer;
		failBlock: [ ^ ContextPart primitiveFailTokenFor: nil ];
		compile.
	
	m flushCache.
	m selector flushCache.
	
	^ m valueWithReceiver: aReceiver arguments: arguments.
	