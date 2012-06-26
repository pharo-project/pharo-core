searching
filesContaining: searchString caseSensitive: aBoolean
	| aList |
	"Search the contents of all files in the receiver and its subdirectories for the search string.  Return a list of paths found.  Make the search case sensitive if aBoolean is true."

	aList := OrderedCollection new.
	self withAllFilesDo: [:stream |
			(stream contentsOfEntireFile includesSubstring: searchString caseSensitive: aBoolean)
				ifTrue:	[aList add: stream name]]
		andDirectoriesDo: [:d | d pathName].
	^ aList

"FileDirectory default filesContaining: 'includesSubstring:'  caseSensitive: true"