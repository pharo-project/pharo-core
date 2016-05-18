update60016
	"self new update60016"
	
| cc fullClosure |
"Creates CompiledCode, CompiledBlock with the correct format."
Smalltalk classInstaller
	make: [ :builder | 
		builder
			superclass: ByteArray;
			name: #CompiledCode;
			layoutClass: CompiledMethodLayout;
			slots: CompiledMethod slots;
			sharedVariablesFromString: '';
			sharedPools: '';
			category: 'Kernel-Methods';
			environment: Smalltalk globals ].
cc := Smalltalk at: #CompiledCode ifAbsent: nil.
self assert: cc notNil description: 'Could not create CompiledCode'.
CompiledMethod superclass: cc.
cc subclasses: {CompiledMethod}.
ByteArray
	subclasses: (ByteArray subclasses copyWithout: CompiledMethod).
Smalltalk classInstaller
	make: [ :builder | 
		builder
			superclass: cc;
			name: #CompiledBlock;
			layoutClass: CompiledMethodLayout;
			slots: CompiledMethod slots;
			sharedVariablesFromString: '';
			sharedPools: '';
			category: 'Kernel-Methods';
			environment: Smalltalk globals ].
"Move classVariables from CompiledMethod to CompiledCode"
(Smalltalk at: #CompiledCode) classPool: CompiledMethod classPool.
CompiledMethod classPool: Dictionary new.
	self withUpdateLog: '18104 Introduction of FullBlockClosure (1) CompiledBlock
	https://pharo.fogbugz.com/f/cases/18104'.
	self loadTogether: self script60016 merge: false.
	self flushCaches.
