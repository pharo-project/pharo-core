link: aMetaLink
	| wrapper class methods |
	class := self definingClass.
	methods := self usingMethods.
	wrapper := self asWrapperFor: aMetaLink.
	class replaceClassVariable: wrapper. "this exchanges self with the wrapper in the Class"
	aMetaLink installOnVariable: wrapper.
	methods
		do: [ :method |  
			method
				createTwin;
				invalidate.
			method installLink: aMetaLink ]