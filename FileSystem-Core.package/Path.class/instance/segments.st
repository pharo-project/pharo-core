accessing
segments
	"return an array with all the path segements separated"
	| segments index |
	segments := Array new: self size.
	index := 1.
	self do: [ :part|
		segments at: index put: part.
		index := index + 1 ].
	
	^ segments