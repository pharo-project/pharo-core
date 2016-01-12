executeAction

	self needsUpdate: false.
	self codePresentation
		compileTextIn: self currentContext from: self session andDo: [ self needsUpdate: true ]

	"self session 
		recompileMethodTo: sourceCode 
		inContext: self currentContext 
		notifying: self debugger codePresentation"