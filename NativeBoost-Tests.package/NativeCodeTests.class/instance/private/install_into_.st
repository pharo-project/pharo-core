install: nativeCode into: method

	| trailer  newMethod |
	trailer := CompiledMethodTrailer new.

	trailer nativeCode: nativeCode platformId: NativeBoost platformId sourcePointer: method trailer sourcePointer.
	newMethod := method copyWithTrailerBytes: trailer.
	
	method methodClass methodDict at: method selector put: newMethod.
	
