link: aMetaLink
	| wrapper class |
	class := self definingClass.
	wrapper := LinkWrapper new.
	wrapper link: self.
	wrapper setClass: class.
	wrapper slot: self.
	
	self flag: #rewriteForGlobal.
	
	class declareClassVariables: { wrapper }. "this exchanges self with the wrapper in the Class"
	self users compileAll.  "recompile all methods that reference the Global"