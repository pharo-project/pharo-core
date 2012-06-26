visitor-double dispatching
acceptLiteralArrayNode: aRBLiteralArrayNode 
	aRBLiteralArrayNode contents do: [:each | self visitNode: each]