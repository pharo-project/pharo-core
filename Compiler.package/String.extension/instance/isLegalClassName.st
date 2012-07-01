*Compiler-Kernel
isLegalClassName
	"Answer whether aString is a legal  class name."

	^ [ClassBuilder new validateClassName: self asSymbol] on: Error do: [^ false] 