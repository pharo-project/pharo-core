setSelector: aSymbol
	"Make the receiver point at the given selector, in the currently chosen class"

	| aClass messageCatIndex |
	aSymbol ifNil: [^ self].
	(aClass := self selectedClassOrMetaClass) ifNil: [^ self].
	messageCatIndex := aClass organization protocols 
		indexOf: (aClass organization protocolOrganizer protocolsOfSelector: aSymbol) anyOne.
	self messageCategoryListIndex: messageCatIndex + 1.
	messageCatIndex = 0 ifTrue: [^ self].
	self messageListIndex:
			((aClass organization listAtCategoryNumber: messageCatIndex)
					indexOf: aSymbol)