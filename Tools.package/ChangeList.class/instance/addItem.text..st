initialization-release
addItem: item text: text
	| cr |
	cr := Character cr.
	changeList addLast: item.
	list addLast: (text collect: [:x | x = cr ifTrue: [$/] ifFalse: [x]])