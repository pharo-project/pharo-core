= aSet
	self == aSet ifTrue: [^ true].	"stop recursion"
	((aSet isKindOf: Set) or: [ aSet isKindOf: HashSet ])
		ifFalse: [^ false].
	self size = aSet size ifFalse: [^ false].
	self do: [:each | (aSet includes: each) ifFalse: [^ false]].
	^ true