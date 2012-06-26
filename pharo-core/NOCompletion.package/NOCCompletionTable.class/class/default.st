as yet unclassified
default
	^ table ifNil: [table := self new entriesPerPrefix: 40]