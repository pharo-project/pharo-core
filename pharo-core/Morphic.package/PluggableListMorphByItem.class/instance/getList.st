as yet unclassified
getList
	"cache the raw items in itemList"
	itemList := getListSelector ifNil: [ #() ] ifNotNil: [ model perform: getListSelector ].
	^super getList