initialize-release
initialize
	super initialize.
	delimiters := ',.-:='.
	Character separators do:[:c | delimiters := delimiters , c asString].
