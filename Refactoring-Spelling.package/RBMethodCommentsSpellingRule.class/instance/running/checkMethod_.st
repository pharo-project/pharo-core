checkMethod: aContext 
	aContext parseTree nodesDo: [ :node | 
		node comments do: [ :interval | 
			| source |
			source := aContext sourceCode asString 
				copyFrom: interval first + 1
				to: interval last - 1.
			(self check: source) do: [ :each |
				(self ignore: each in: aContext) ifFalse: [
					result
						addSearchString: each;
						addClass: aContext selectedClass selector: aContext selector ] ] ] ]