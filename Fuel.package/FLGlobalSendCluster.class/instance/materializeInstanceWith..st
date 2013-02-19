serialize/materialize
materializeInstanceWith: aDecoder

	| global selector |
	global := (FLGlobalCluster basicNew materializeGlobalAssociationFrom: aDecoder) value.	
	selector := aDecoder nextEncodedString asSymbol.
	^ global perform: selector