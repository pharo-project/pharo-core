annotation
annotation
	"Provide a line of content for an annotation pane, representing information about the method associated with the selected class and selector in the receiver."

	|  aSelector aClass |
	(aClass := self selectedClassOrMetaClass) == nil ifTrue: [^ '------'].
	self editSelection == #editComment ifTrue:
		[^ self annotationForSelector: #Comment ofClass: aClass].

	self editSelection == #editClass ifTrue:
		[^ self annotationForSelector: #Definition ofClass: aClass].
	(aSelector := self selectedMessageName) ifNil: [^ '------'].
	^ self annotationForSelector: aSelector ofClass: aClass