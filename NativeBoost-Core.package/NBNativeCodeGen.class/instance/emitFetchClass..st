code generation
emitFetchClass: aClass
	"emit code, which fetching the class oop into EAX"
	^  NativeBoost extraRootsRegistry emitFetchClass: aClass generator: self 