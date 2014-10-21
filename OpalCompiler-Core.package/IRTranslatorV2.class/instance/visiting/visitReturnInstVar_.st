visitReturnInstVar: instVar
	self popScopeIfRequired: instVar.
	gen returnInstVar: instVar index