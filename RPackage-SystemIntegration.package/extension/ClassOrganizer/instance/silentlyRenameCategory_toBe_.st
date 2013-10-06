silentlyRenameCategory: oldCatString toBe: newCatString
	| oldCat newCat oldElementsBefore oldElementsAfter index |
	oldCat := oldCatString asSymbol.
	newCat := newCatString asSymbol.
	oldElementsBefore := self listAtCategoryNamed: oldCat.
	(index := categoryArray indexOf: oldCat) = 0
		ifTrue: [^ self].	"old name not found, so no action"
	(categoryArray indexOf: newCat) > 0
		ifFalse: [
			categoryArray := categoryArray copy.  "need to change identity so smart list update will notice the change"
			categoryArray at: index put: newCat ]
		ifTrue: [
			"if the category already exist, we move all elements inside and remove the old category"
			SystemAnnouncer uniqueInstance suspendAllWhile: [
				oldElementsBefore do: [:anElement | self classify: anElement under: newCat ].
				self removeCategory: oldCat ] ].