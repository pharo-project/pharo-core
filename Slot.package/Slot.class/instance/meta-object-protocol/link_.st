link: aMetaLink
	| wrapper class methods |
	class := self definingClass.
	methods := self  usingMethods.
	wrapper := LinkWrapper new.
	wrapper setLink: aMetaLink.
	wrapper setClass: class.
	wrapper slot: self.

	index := class layout slotScope indexOf: self.
	class layout slotScope at: index put: wrapper.	
 	methods do: [ :each | each recompile ]