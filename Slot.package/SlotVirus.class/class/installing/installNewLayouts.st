installNewLayouts
	ProtoObject
		instVarNamed: #layout
		put: ((EmptyLayout instance extend: #()) host: ProtoObject).
		
"	self flag: 'I do not like PseudoContext'.
	PseudoContext
		instVarNamed: #layout
		put: ((NilLayout instance extend: #()) host: ProtoObject)."

	ProtoObject allSubclassesDo: [ :aSubclass |
		aSubclass
			instVarNamed: #layout
			put: (self newLayoutFor: aSubclass) ].
		
	SmallInteger
		instVarNamed: #layout
		put: (SmallIntegerLayout new).
		
	CompiledMethod
		instVarNamed: #layout
		put: (self newLayoutFor: CompiledMethod).