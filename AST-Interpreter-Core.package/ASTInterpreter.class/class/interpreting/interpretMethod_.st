interpretMethod: anASTNode
	^ self new
		resetContext: AIRootContext new;
		interpretMethod: anASTNode