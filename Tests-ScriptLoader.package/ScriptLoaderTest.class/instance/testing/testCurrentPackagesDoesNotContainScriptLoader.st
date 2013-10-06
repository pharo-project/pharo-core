testCurrentPackagesDoesNotContainScriptLoader
	"self debug: #testCurrentPackagesDoesNotContainScriptLoader"
	

	| p |
	p := ScriptLoader new currentPackages collect: [:each | each package name].
	self deny: (p anySatisfy: [ :pa | 'ScriptLoader*'  match: pa])