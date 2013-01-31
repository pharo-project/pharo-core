class and trait names
classAndTraitNames
	"Answer a sorted collection of all class and trait (not including class-traits) names. The performance of 
	this algorithm is O(n) if the classNames are already cached, otherwise O(n*log(n)) where n is self size."

	| classNames traitNames result temporary |
	classNames := self classNames.
	traitNames := self traitNames.
	temporary := Array new: classNames size + traitNames size.
	result := temporary shallowCopy.
	temporary
		replaceFrom: 1
		to: classNames size
		with: classNames
		startingAt: 1;
		replaceFrom: classNames size + 1
		to: temporary size
		with: traitNames
		startingAt: 1;
		
		mergeFirst: 1
		middle: classNames size
		last: temporary size
		into: result
		by: [ :a :b | a <= b ].
		
	^result