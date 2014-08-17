initialize

	tempVars :=  OrderedDictionary new.
	copiedVars := OCKeyedSet keyBlock: [:var | var name].
	tempVector  := OCKeyedSet keyBlock: [:var | var name].
	id := 0.
	
	thisContextVar := OCSpecialVariable new
		name: 'thisContext';
		scope: self; yourself.
