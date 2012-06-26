*Morphic-Basic
nilTransitions
	"Return an OrderedCollection of transition indexes.  
	Indexes represent where the list elements transitions 
	from nil to nonNil  or from nonNil to nil.
	1 is an index in the list iff the first element is nonNil. "
	
	| changes nilSkip |
	changes := OrderedCollection new.
	nilSkip := true .
	1 to: self size do: [:i | (self atWrap: i) isNil == nilSkip
				ifFalse: [changes add: i.
						nilSkip := nilSkip not]].
	^ changes 