accessing
findTokens: delimiters includes: subString
	"Divide self into pieces using delimiters.  Return the piece that includes subString anywhere in it.  Is case sensitive (say asLowercase to everything beforehand to make insensitive)."

^ (self findTokens: delimiters) 
	detect: [:str | (str includesSubstring: subString)] 
	ifNone: [nil]