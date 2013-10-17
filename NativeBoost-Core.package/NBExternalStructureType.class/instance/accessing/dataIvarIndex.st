dataIvarIndex
	" return a zero-based index "
	^ ( objectClass instVarIndexFor: #data ifAbsent: [ self error: ' should not happen ' ] ) - 1