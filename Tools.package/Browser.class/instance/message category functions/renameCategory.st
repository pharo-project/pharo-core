renameCategory
	"Prompt for a new category name and add it before the
	current selection, or at the end if no current selection"
	| oldIndex oldName newName |
	classListIndex = 0 ifTrue: [^ self].
	self okToChange ifFalse: [^ self].
	(oldIndex := messageCategoryListIndex) = 0 ifTrue: [^ self].
	oldName := self selectedMessageCategoryName.
	newName := self
		request: 'Please type new category name'
		initialAnswer: oldName.
	newName isEmptyOrNil
		ifTrue: [^ self]
		ifFalse: [newName := newName asSymbol].
	newName = oldName ifTrue: [^ self].
	self classOrMetaClassOrganizer
		renameCategory: oldName
		toBe: newName.
	self classListIndex: classListIndex.
	self messageCategoryListIndex: oldIndex.
	self changed: #messageCategoryList.
