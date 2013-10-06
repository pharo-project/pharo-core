testBasenameWithoutExtension
	"self debug: #testBasenameWithoutExtension"
	
	| ref |
	
	ref := filesystem root.
	self assert: ref basename = '/'.
	
	ref := filesystem * 'plonk' / 'griffle'.
	self assert: ref basenameWithoutExtension = 'griffle'.
	
	ref := filesystem * 'plonk' / 'griffle.taz'.
	self assert: ref basenameWithoutExtension = 'griffle'.
	
	ref := filesystem * 'plonk' / 'griffle.taz.zork'.
	self assert: ref basenameWithoutExtension = 'griffle.taz'.