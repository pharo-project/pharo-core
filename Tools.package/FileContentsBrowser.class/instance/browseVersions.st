other
browseVersions
	"Create and schedule a message set browser on all versions of the 
	currently selected message selector."
	| class selector |
	(selector := self selectedMessageName) ifNotNil:
		[class := self selectedClassOrMetaClass.
		(class exists and: [class realClass includesSelector: selector]) ifTrue:
			[Smalltalk tools versionBrowser
				browseVersionsOf: (class realClass compiledMethodAt: selector)
				class: class realClass theNonMetaClass
				meta: class realClass isMeta
				category: self selectedMessageCategoryName
				selector: selector]]