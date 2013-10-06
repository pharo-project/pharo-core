renameCategory: oldCatString toBe: newCatString
	| oldCat newCat oldElementsBefore oldElementsAfter |
	oldCat := oldCatString asSymbol.
	newCat := newCatString asSymbol.
	oldElementsBefore := self listAtCategoryNamed: oldCat.
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		super renameCategory: oldCatString toBe: newCatString].
	oldElementsAfter := (self listAtCategoryNamed: oldCat) asSet.
	oldElementsBefore do: [:each |
		(oldElementsAfter includes: each)
			ifFalse: [self notifyOfChangedSelector: each from: oldCat to: newCat].
	].
	self notifyOfChangedCategoryFrom: oldCat to: newCat.