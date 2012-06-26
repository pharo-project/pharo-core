tests
testBasenameWithoutExtension
	"self debug: #testBasenameWithoutExtension"
	| path |
	path := Path * 'plonk' / 'griffle'.
	self assert: path basenameWithoutExtension = 'griffle'.
	
	path := Path * 'plonk' / 'griffle.taz'.
	self assert: path basenameWithoutExtension = 'griffle'.
	
	path := Path * 'plonk' / 'griffle.taz.zork'.
	self assert: path basenameWithoutExtension = 'griffle.taz'.