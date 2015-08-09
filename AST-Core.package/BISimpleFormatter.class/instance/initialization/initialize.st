initialize
	super initialize.
	lineStart := 0.
	self indent: 0.
	lookaheadCode := IdentityDictionary new.
	codeStream := WriteStream on: (String new: 256).
	