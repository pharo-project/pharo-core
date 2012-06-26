as yet unclassified
versionFromFileNamed: aString
	| v |
	v := self cache
			 at: aString 
			 ifAbsent: [ self loadVersionFromFileNamed: aString ].
	self resizeCache: cache.
	(v notNil and: [v isCacheable]) ifTrue: [cache at: aString put: v].
	^ v