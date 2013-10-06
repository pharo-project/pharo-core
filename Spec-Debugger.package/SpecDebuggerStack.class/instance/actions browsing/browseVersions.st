browseVersions
	"Create and schedule a message set browser on all versions of the 
	currently selected message selector."

	| class selector |
	class := self currentClassOrMetaClass.
	selector := self currentMessageName.
	Smalltalk tools versionBrowser
		browseVersionsOf: (class compiledMethodAt: selector)
		class: self currentClass theNonMetaClass
		meta: class isMeta
		category: self currentMessageCategoryName
		selector: selector