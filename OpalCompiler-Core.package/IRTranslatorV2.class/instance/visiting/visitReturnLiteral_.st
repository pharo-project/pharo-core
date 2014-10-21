visitReturnLiteral: lit

	self popScopeIfRequired: lit.
	gen returnConstant: lit literal
