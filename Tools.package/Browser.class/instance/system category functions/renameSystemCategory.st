renameSystemCategory
	"Prompt for a new category name and add it before the
	current selection, or at the end if no current selection"
	| oldIndex oldName newName |
	(oldIndex := systemCategoryListIndex) = 0
		ifTrue: [^ self].  "no selection"
	self okToChange ifFalse: [^ self].
	oldName := self selectedSystemCategoryName.
	newName := self
		request: 'Please type new category name'
		initialAnswer: oldName.
	newName isEmptyOrNil 
		ifTrue: [^ self]
		ifFalse: [newName := newName asSymbol].
	oldName = newName ifTrue: [^ self].
	systemOrganizer
		renameCategory: oldName
		toBe: newName.
	self systemCategoryListIndex: oldIndex.
	self changed: #systemCategoryList.