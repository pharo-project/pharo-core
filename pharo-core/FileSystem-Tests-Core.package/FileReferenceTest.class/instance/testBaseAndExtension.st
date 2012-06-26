tests
testBaseAndExtension
	"self debug: #testBaseAndExtension"
	
	| ref |
	ref := filesystem * 'plonk' / 'griffle.taz'.
	"We create a reference to the plonk/griffle.taz in the context of filesystem"
	self assert: ref base = 'griffle'.
	self assert: ref extension = 'taz'.
	
	"Note that the extension of a complex extension starts from the first period up until the end"
	ref := filesystem * 'plonk' / 'griffle.taz.txt'.
	self assert: ref base = 'griffle'.
	self assert: ref extension = 'txt'.