testVariableCanExtendPointer

	self should: [ :builder | 
			builder layoutClass: PointerLayout ]
		extendWith: [ :builder | 
			builder layoutClass: VariableLayout ]