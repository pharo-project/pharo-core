accessing
classDepth

	superclass ifNil: [^ 1].
	^ superclass classDepth + 1