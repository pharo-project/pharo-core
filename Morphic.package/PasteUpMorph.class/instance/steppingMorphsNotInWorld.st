project state
steppingMorphsNotInWorld
	| all |
	all := self allMorphs.
	^ self listOfSteppingMorphs select: [:m | (all includes: m) not]

	"self currentWorld steppingMorphsNotInWorld do: [:m | m delete]"