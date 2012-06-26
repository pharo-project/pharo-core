private
browseAction

	| classDefiningAction |
	classDefiningAction := self model class whichClassIncludesSelector: self actionSelector.
	SystemBrowser default newOnClass: classDefiningAction selector: self actionSelector.