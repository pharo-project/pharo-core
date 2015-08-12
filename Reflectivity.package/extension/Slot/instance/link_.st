link: aMetaLink
	| wrapper class methods |
	class := self definingClass.
	methods := self usingMethods.
	wrapper := LinkWrapper new
		setLink: aMetaLink;
		setClass: class;
		slot: self.
	class layout replaceSlot: self with: wrapper.
	aMetaLink installOnVariable: wrapper.
	methods
		do: [ :method |  
			method
				createTwin;
				invalidate.
			method installLink: aMetaLink ]