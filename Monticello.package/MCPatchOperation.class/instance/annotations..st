accessing
annotations: requests
	"Answer a string for an annotation pane, trying to fulfill the CodeHolder annotationRequests"
	^String streamContents: [ :s | self printAnnotations: requests on: s ].