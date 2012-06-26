private
formOf: char

	| code form |
	char charCode > 255
		ifTrue: [^ self fallbackFont formOf: char].

	cache ifNil:[self foregroundColor: Color black]. "make sure we have a cache"

	code := char charCode.
	form := cache at: (code + 1).
	form class == Association ifTrue:[^self computeForm: code]. "in midst of loading"
	form ifNil:[
		form := self computeForm: code.
		cache at: code+1 put: form.
		GlyphCacheData at: (GlyphCacheIndex := GlyphCacheIndex \\ GlyphCacheSize + 1) put: form.
	].
	^form
