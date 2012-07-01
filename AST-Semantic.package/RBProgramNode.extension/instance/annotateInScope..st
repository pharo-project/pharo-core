*ast-semantic-actions
annotateInScope: aScope
	self semanticAnnotatorClass new
		start: self scope: aScope