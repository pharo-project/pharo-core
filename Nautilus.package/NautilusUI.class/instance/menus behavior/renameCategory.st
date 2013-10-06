renameCategory
	"Prompt for a new category name and add it before the
	current selection, or at the end if no current selection"

	| category newName vScroll |
	self okToChange ifFalse: [^ self].
	category := self selectedCategory.
	vScroll := categoryWidget vScrollValue.
	newName := self renameCategory: category from: self selectedClass.
	newName ifNil: [ ^ self ].
	categoryWidget deselectProtocol: category.
	self selectedCategory: newName.
	categoryWidget selectProtocol: newName.
	self update.
	categoryWidget vScrollValue: vScroll