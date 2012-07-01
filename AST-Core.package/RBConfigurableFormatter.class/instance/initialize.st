initialize-release
initialize
	super initialize.
	lineStart := 0.
	indent := 0.
	lookaheadCode := IdentityDictionary new.
	codeStream := WriteStream on: (String new: 256)