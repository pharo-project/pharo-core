showAnnotationPane
	"Answer whether the receiver, seen in some browser window, 
	would like to have the so-called  annotationpane included.
	see also annotationRequests comment"

	^ ShowAnnotationPane ifNil: [ShowAnnotationPane := false]