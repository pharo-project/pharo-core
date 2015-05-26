browseAction

	| classDefiningAction |
	classDefiningAction := self model class whichClassIncludesSelector: self actionSelector.
	Smalltalk tools browser newOnClass: classDefiningAction selector: self actionSelector.