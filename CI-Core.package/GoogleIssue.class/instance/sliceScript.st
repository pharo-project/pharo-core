loading
sliceScript
	| slc |
	slc := self slice.
	^ String streamContents: [:s | 
		s << 'Gofer new
	url: ' << slc repository description printString <<';' << String crlf << String tab << 'package: ' << 	slc packageName printString << ';' << String crlf << String tab << 'version: ' << slc name printString <<';' << String crlf << String tab << 'load.' ].