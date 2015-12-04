completionTokenIsLiteralOrComment
	^ self completionTokenIsLiteral or:[ self completionTokenIsComment]