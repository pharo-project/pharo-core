generate scripts/methods
compileScriptMethodWithCurrentPackages: aNumber 
	"self new compileScriptMethodWithCurrentPackages: 9999"
	| preamble postscript |
	
	preamble := UIManager default 
		multiLineRequest: 'Preamble expression'
		initialAnswer: ''
		answerHeight: 200.

	postscript := UIManager default
		multiLineRequest: 'Postscript expression'
		initialAnswer: ''
		answerHeight: 200. 
	
	ConfigurationOfPharo20 new 
		newVersion: aNumber asString
		description: self commentForCurrentUpdate
		preLoad: preamble
		postLoad: postscript.