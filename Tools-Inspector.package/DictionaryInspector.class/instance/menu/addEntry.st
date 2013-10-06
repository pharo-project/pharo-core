addEntry
	| newKey aKey |

	newKey := UIManager default request:
'Enter new key, then type RETURN.
(Expression will be evaluated for value.)
Examples:  #Fred    ''a string''   3+4'.
	aKey := self class compiler evaluate: newKey.
	object at: aKey put: nil.
	self calculateKeyArray.
	selectionIndex := self numberOfFixedFields + (keyArray indexOf: aKey).
	self changed: #inspectObject.
	self changed: #selectionIndex.
	self changed: #fieldList.
	self update