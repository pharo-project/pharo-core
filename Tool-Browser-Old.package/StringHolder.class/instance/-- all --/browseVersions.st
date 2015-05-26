browseVersions
	"Create and schedule a Versions Browser, showing all versions of the 
	currently selected message. Answer the browser or nil."
	self classCommentIndicated ifTrue: [ ^nil ].

	 self selectedMessageName
		ifNil:[ self inform: 'Sorry, only actual methods have retrievable versions.'. ^nil ]
		ifNotNil: [:sel | ^Smalltalk tools versionBrowser browseVersionsForClass: self selectedClassOrMetaClass selector: sel]
			
			