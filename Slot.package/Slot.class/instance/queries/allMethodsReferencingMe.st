allMethodsReferencingMe
	self tag: #TBD.
	"as slots might not map to ivars, we do need to query the AST and search
	for variableNodes that reference me"