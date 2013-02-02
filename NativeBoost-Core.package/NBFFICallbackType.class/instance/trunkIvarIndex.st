as yet unclassified
trunkIvarIndex
	" return a zero-based index "
	^ ( callbackClass instVarIndexFor: #trunk ifAbsent: [ self error: ' should not happen ' ] ) - 1