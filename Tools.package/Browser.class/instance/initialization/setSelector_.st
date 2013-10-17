setSelector: aSymbol
	"Make the receiver point at the given selector, in the currently chosen class"

	| aClass messageCatIndex |
	aSymbol ifNil: [^ self].
	(aClass := self selectedClassOrMetaClass) ifNil: [^ self].
	messageCatIndex := aClass organization numberOfCategoryOfElement: aSymbol.
	self messageCategoryListIndex: messageCatIndex + 1.
	messageCatIndex = 0 ifTrue: [^ self].
	self messageListIndex:
			((aClass organization listAtCategoryNumber: messageCatIndex)
					indexOf: aSymbol)