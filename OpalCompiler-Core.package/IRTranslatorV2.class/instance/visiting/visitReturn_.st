visitReturn: ret
	
	self popScopeIfRequired: ret.
	gen returnTop


