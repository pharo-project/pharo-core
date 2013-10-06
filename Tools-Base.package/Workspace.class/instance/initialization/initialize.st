initialize
	
	super initialize.
	contents := ''.
	acceptDroppedMorphs := false.
	mustDeclareVariables := false.
	lineEnding := #cr.
	"try to guess default line ending"
	Smalltalk os isWindows ifTrue: [lineEnding := #crlf].
	Smalltalk os isUnix ifTrue: [lineEnding := #lf].
	
	encoding := TextConverter default class encodingNames first.