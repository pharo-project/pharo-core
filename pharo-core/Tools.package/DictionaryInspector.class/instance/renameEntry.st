menu
renameEntry
	| newKey aKey value |

	value := object at: (keyArray at: selectionIndex - self numberOfFixedFields).
	newKey := UIManager default request: 
'Enter new key, then type RETURN.
(Expression will be evaluated for value.)
Examples:  #Fred    ''a string''   3+4'
		 initialAnswer: (keyArray at: selectionIndex - self numberOfFixedFields) printString.
	newKey isNil ifFalse: [
		aKey := self class evaluatorClass evaluate: newKey.
		object removeKey: (keyArray at: selectionIndex - self numberOfFixedFields).
		object at: aKey put: value.
		self calculateKeyArray.
		selectionIndex := self numberOfFixedFields + (keyArray indexOf: aKey).
		self changed: #selectionIndex.
		self changed: #inspectObject.
		self changed: #fieldList.
		self update ]