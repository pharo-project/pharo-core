link: aMetaLink
	| wrapper class methods |
	class := self definingClass.
	methods := self usingMethods.
	wrapper := LinkWrapperGlobal new
		 setLink: aMetaLink;
		 setClass: class;
		 wrappedVariable: self.
	wrapper key: self key.
	wrapper value: self value.
	class replaceClassVariable: wrapper. "this exchanges self with the wrapper in the Class"
	methods do: #recompile.  "recompile all methods that reference the Global"