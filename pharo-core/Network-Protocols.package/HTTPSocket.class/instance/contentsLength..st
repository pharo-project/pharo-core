accessing
contentsLength: header
	"extract the data length from the header.  Content-length: 1234<cr><lf>,  User may look in headerTokens afterwards."

	| this |
	headerTokens := header findTokens: ParamDelimiters keep: String cr.
	1 to: headerTokens size do: [:ii | 
		this := headerTokens at: ii.
		(this first asLowercase = $c and: [this asLowercase = 'content-length:']) ifTrue: [
			^ (headerTokens at: ii+1) asNumber]].
	^ nil	"not found"