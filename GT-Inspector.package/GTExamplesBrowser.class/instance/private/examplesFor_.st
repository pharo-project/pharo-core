examplesFor: anObject
	| pragmas |
	pragmas := Pragma 
				allNamed: #gtExample 
				in: anObject class.
	^ pragmas collect: [ :eachPragma | 
		GTExample new
			methodReference: eachPragma method asRingDefinition ]
