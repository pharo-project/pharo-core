accessing
handleIvarIndex
	" return a zero-based index "
	^ ( objectClass instVarIndexFor: #handle ifAbsent: [ self error: ' should not happen ' ] ) - 1