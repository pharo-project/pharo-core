link: aMetaLink
	| wrapper class methods |
	class := self definingClass.
	methods := self  usingMethods.
	wrapper := LinkWrapper new
		 setLink: aMetaLink;
		 setClass: class;
		 slot: self.
	class layout replaceSlot: self with: wrapper.
	self flag: #TBD. "here instead we need to create a twin and register the link"
 	methods do: [ :each | each recompile ]