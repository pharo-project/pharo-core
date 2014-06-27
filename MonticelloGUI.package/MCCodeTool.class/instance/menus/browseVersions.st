browseVersions
	"Create and schedule a message set browser on all versions of the 
	currently selected message selector."

	| class selector |
	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	class compiledMethodAt: selector ifAbsent: [ ^self ].
	
	Smalltalk tools versionBrowser  browseVersionsForClass:  class selector: selector
		