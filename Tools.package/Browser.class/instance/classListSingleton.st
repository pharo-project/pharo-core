class list
classListSingleton

	| name |
	name := self selectedClassName.
	^ name ifNil: [Array new]
		ifNotNil: [Array with: name]