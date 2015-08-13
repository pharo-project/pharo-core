link: aMetaLink
	| wrapper  methods |
	methods := self usingMethods.
	wrapper := self asWrapperFor: aMetaLink.
	
	Smalltalk globals removeKey: self key.
	Smalltalk globals add: wrapper.
	aMetaLink installOnVariable: wrapper.
	methods
		do: [ :method |  
			method
				createTwin;
				invalidate.
			method installLink: aMetaLink ]