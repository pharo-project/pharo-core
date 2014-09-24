substrings: separators 
	"Answer an array containing the substrings in the receiver separated 
	by the elements of separators."
		
	"Adds forwards compatibility with planned conversion of #subStrings: to #substrings in Pharo4 
	and deprecation of #subStrings: in Pharo5 (Issue 14034 and parent 7592)"
	
	^ self subStrings: separators 