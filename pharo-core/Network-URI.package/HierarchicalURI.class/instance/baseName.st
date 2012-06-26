accessing
baseName
	"returns the last component stripped of its extension"

	| baseName i |
	baseName := self name.
	i := baseName findLast: [:c | c = $.].
	^i = 0
		ifTrue: [baseName]
		ifFalse: [baseName copyFrom: 1 to: i-1].
