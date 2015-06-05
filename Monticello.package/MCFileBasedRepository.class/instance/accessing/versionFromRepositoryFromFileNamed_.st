versionFromRepositoryFromFileNamed: aString
	| v |
	v := self cache
			 at: aString 
			 ifAbsent: [ self loadNotCachedVersionFromFileNamed: aString ].
	self updateCachedVersionFromFileName: aString with: v.
	^ v