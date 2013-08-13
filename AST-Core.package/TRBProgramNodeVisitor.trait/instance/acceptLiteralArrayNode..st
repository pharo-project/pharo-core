visiting rb nodes
acceptLiteralArrayNode: aRBLiteralArrayNode 
	aRBLiteralArrayNode contents do: [:each | self visitNode: each]