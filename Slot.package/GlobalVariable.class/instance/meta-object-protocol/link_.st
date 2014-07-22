link: aMetaLink
	| wrapper  methods |
	methods := self usingMethods.
	wrapper := self asWrapperFor: aMetaLink.
	
	Smalltalk globals removeKey: self key.
	Smalltalk globals add: wrapper.
	self value isBehavior ifTrue: [self value recompile].
	methods do: #recompile.  "recompile all methods that reference the Global"