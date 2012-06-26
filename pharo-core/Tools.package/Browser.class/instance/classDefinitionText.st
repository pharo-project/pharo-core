class functions
classDefinitionText
	"return the text to display for the definition of the currently selected class"
	| theClass |
	^(theClass := self selectedClassOrMetaClass) ifNil: [''] ifNotNil: [theClass definition]