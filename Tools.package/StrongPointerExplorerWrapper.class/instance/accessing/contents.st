contents
	| objects |
	objects := item pointersToExcept: (Array with: self with: model).	
	"filter out all wrappers and all those who pointing only weakly to subject"
	^(objects reject: [:ea | ea class == self class or: [ea pointsOnlyWeaklyTo: item]])
		collect: [:ea| self class with: ea name: ea identityHash asString model: item]