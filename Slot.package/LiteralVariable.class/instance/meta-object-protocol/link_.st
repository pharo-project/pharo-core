link: aMetaLink
	| wrapper class |
	
	self flag: 'subclass resp. after ClassVar are active'.
	
	class := self definingClass.
	wrapper := LinkWrapper new.
	wrapper link: self.
	wrapper setClass: class.
	wrapper slot: self.
	class declareClassVariables: { wrapper }. "this exchanges self with the wrapper in the Class"
	self usingMethods compileAll.  "recompile all methods that reference the Global"