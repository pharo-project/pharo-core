moving changes
removeClassChanges: class
	"Remove all memory of changes associated with this class"
	| cname |
	(class isString)
		ifTrue: [ cname := class ]
		ifFalse: [ cname := class name ].

	changeRecords removeKey: cname ifAbsent: [].
	self noteClassForgotten: cname.