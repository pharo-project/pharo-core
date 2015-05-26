transformLastToReturn
	| last |
	statements ifEmpty: [ ^self].
	last := statements last.
	last isReturn ifFalse: [self replaceNode: last withNode: (RBReturnNode value: last )]