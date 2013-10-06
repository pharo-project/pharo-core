browseVersions
	"Create and schedule a message set browser on all versions of the 
	currently selected message selector."

	| class selector compiledMethod |
	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	compiledMethod := class compiledMethodAt: selector ifAbsent: [ ^self ].
	Smalltalk tools versionBrowser
		browseVersionsOf: compiledMethod
		class: class theNonMetaClass
		meta: class isMeta
		category: self selectedMessageCategoryName
		selector: selector