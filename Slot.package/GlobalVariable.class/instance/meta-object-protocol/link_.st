link: aMetaLink
	| wrapper class |
	class := self definingClass.
	wrapper := LinkWrapper new.
	wrapper link: self.
	wrapper setClass: class.
	wrapper slot: self.
	
	self flag: #rewriteForGlobal.
	
	self usingMethods do: #recompile.  "recompile all methods that reference the Global"