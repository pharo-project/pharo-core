link: aMetaLink
	| wrapper class methods |
	class := self definingClass.
	methods := self usingMethods.
	wrapper := LinkWrapperGlobal new
		 setLink: self;
		 setClass: class;
		 wrappedVariable: self.
	wrapper key: self key.
	wrapper value: self value.
	self flag: #TODO.
	"we need to replace all users...e.g. bindings in compiledMethods"
	Smalltalk globals declare: { wrapper } from: Dictionary new. 
	methods do: #recompile.  "recompile all methods that reference the Global"