presentation
	^ GLMCompositePresentation new
		with: [ :a | 
			| t seg |
			t := a rubricText.
			t withLineNumbers: true.
			t withAnnotation: true.
			t wrapped: true.
			t tabWidth: 40.
			t withColumns: true]