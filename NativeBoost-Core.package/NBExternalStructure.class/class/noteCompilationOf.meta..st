managing accessors
noteCompilationOf: aSelector meta: isMeta
	initialized == true ifFalse: [ ^ self ].

	isMeta ifTrue: [ 
		"Compilation on a class side , lets get rid of native methods on instance side"
		(aSelector == #fieldsDesc or: [ aSelector == #byteAlignment ]) ifTrue: [ 
			self flushNativeFieldAccessors.
			self rebuildFieldAccessors ].
	].
