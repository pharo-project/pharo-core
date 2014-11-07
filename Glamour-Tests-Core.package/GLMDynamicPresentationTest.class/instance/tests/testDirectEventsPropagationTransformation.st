testDirectEventsPropagationTransformation
	| dynamic textPresentation counter |
	counter := 0.
	dynamic := GLMDynamicPresentation new.
	dynamic entity: '42'.
	dynamic display: [ :entity | textPresentation := GLMTextPresentation new ].
	
	"Build the presentation"
	dynamic currentPresentation.
	
	textPresentation announcer when: GLMContextChanged do: [ :ann |
		counter := counter + 1 ].
	dynamic outerPortEvent: (GLMPortEvent on: 1 previouslyValued: 2).
	
	self assert: counter equals: 1.