initialization
setClass: aBehavior selector: aSymbol
	"Set the state of a new, uninitialized Browser."

	| isMeta aClass messageCatIndex |
	aBehavior
		ifNil: [ ^ self ].
	(aBehavior isKindOf: Metaclass)
		ifTrue: [ 
			isMeta := true.
			aClass := aBehavior soleInstance ]
		ifFalse: [ 
			isMeta := false.
			aClass := aBehavior ].
	self selectCategoryForClass: aClass.
	self classListIndex: ((systemOrganizer listAtCategoryNamed: self selectedSystemCategoryName) indexOf: aClass name).
	self metaClassIndicated: isMeta.
	aSymbol
		ifNil: [ ^ self ].
	messageCatIndex := aBehavior organization numberOfCategoryOfElement: aSymbol.
	self messageCategoryListIndex: messageCatIndex.
	messageCatIndex = 0
		ifTrue: [ ^ self ].
	self messageListIndex: ((aBehavior organization listAtCategoryNumber: messageCatIndex) indexOf: aSymbol)