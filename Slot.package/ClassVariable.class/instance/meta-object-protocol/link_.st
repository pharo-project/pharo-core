link: aMetaLink
	| wrapper class |
	class := self definingClass.
	wrapper := LinkWrapper new.
	wrapper link: self.
	wrapper setClass: class.
	wrapper slot: self.
	class declareClassVariables: { wrapper }. "this exchanges self with the wrapper in the Class"
	self usingMethods do: #recompile.  "recompile all methods that reference the Global"