code generation (closures)
addLocalsToPool: locals "<Set of: TempVariableNode>"
	localsPool isNil ifTrue:
		[localsPool := IdentitySet new].
	localsPool addAll: locals