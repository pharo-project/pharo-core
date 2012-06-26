private-initialization
initializeFromPathString: aPathString
	"<aPathString> is a file path as a String.
	We construct a path collection using various heuristics."

	| pathString hasDriveLetter |
	pathString := aPathString.
	pathString isEmpty ifTrue: [pathString := '/'].
	path := (pathString findTokens: '/') collect: [:token | token unescapePercents].

	"A path like 'C:' refers in practice to 'c:/'"
	((pathString endsWith: '/') or:
		[(hasDriveLetter := self firstPartIsDriveLetter) and: [path size = 1]])
			ifTrue: [path add: ''].

	"Decide if we are absolute by checking for leading $/ or
	beginning with drive letter. Smarts for other OSes?"
	self isAbsolute: ((pathString beginsWith: '/')
						or: [hasDriveLetter ifNil: [self firstPartIsDriveLetter]])