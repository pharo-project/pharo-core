annotationRequests
	
	^ annotationRequests ifNil: [ annotationRequests := self defaultAnnotationInfo ]