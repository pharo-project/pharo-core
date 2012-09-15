receiving
redirect
	"See if the header has a 'Location: url CrLf' in it.  If so, return the new URL of this page."

	| this |
	1 to: headerTokens size do: [:ii | 
		this := headerTokens at: ii.
		(this first asLowercase = $l and: [this asLowercase = 'location:']) ifTrue: [
			^ (headerTokens at: ii+1)]].
	^ nil	"not found"
