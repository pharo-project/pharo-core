*NativeBoost-Core
trailerKind
	"a shortcut accessor to check the trailer kind, without instantiating the trailer"
	| flagByte index |
	flagByte := self at: self size.
	index := flagByte >> 2 + 1.
	^ CompiledMethodTrailer trailerKinds at: index.
