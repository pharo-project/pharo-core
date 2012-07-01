visitor-double dispatching
acceptLiteralArrayNode: aRBArrayLiteralNode 
	aRBArrayLiteralNode contents: (aRBArrayLiteralNode contents 
				collect: [:each | self visitNode: each])