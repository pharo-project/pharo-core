versionFromFileNamed: aString
	| v |
	v := self cache
			 at: aString 
			 ifAbsent: [ self loadVersionFromFileNamed: aString ].
	self updateCachedVersionFromFileName: aString with: v.
	^ v