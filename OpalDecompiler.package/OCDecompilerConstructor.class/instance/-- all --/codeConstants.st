codeConstants
	"Answer with an array of the objects representing self, true, false, nil,
	-1, 0, 1, 2."
	
	^ { RBSelfNode named: 'self' } , (#(true false nil) collect: [ :each | RBLiteralNode value: each ]) , ((-1 to: 2) collect: [ :each | RBLiteralNode value: each ])