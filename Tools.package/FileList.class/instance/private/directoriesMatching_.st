directoriesMatching: aRegex
	"Answer a list of directory entries which match the patternString.
	The patternString may consist of multiple patterns separated by ';'.
	Each pattern can include a '*' or '#' as wildcards - see String>>match:"
	
	| directories |
	directories :=  reference directories.
	pattern ifNil: [ ^ directories ].
	^ directories reject: [:entry | 
		(aRegex matchingRangesIn: entry basename) isEmpty ]