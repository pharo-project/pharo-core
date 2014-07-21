link: aMetaLink
	| wrapper class methods |
	class := self definingClass.
	methods := self  usingMethods.
	wrapper := LinkWrapper new
		 setLink: aMetaLink;
		 setClass: class;
		 slot: self.
	class layout replaceSlot: self with: wrapper.
 	methods do: [ :each | each recompile ]