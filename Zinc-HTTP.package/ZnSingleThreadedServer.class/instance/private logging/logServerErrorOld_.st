logServerErrorOld: exception
	"About to be removed/replaced"
	
	(self logServerErrorDetails and: [ logLevel > 0 ])
		ifTrue: [ | report |
			report := String streamContents: [ :out | 
							out print: exception; cr.
							exception signalerContext printDetails: out.
							exception signalerContext sender debugStack: 8 on: out ].
			report linesDo: [ :each | Transcript crShow: each ] ]