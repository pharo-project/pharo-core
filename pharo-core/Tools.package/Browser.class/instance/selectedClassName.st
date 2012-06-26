class list
selectedClassName
	| aClassList |
	"Answer the name of the current class. Answer nil if no selection exists."

	(classListIndex = 0 or: [classListIndex > (aClassList := self classList) size]) ifTrue: [^ nil].
	^ aClassList at: classListIndex