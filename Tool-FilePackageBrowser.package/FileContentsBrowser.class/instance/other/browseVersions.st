browseVersions
	"Create and schedule a message set browser on all versions of the 
	currently selected message selector."

	| class selector |
	selector := self selectedMessageName.
	class := self selectedClassOrMetaClass.
	(class exists and: [ class realClass includesSelector: selector ])
		ifTrue: [ Smalltalk tools versionBrowser browseVersionsForClass: class realClass selector: selector ]