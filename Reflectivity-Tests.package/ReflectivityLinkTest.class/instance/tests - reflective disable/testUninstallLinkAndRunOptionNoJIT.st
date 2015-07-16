testUninstallLinkAndRunOptionNoJIT
	| sendNode link |
	sendNode := (ReflectivityExamples>>#exampleMethod) ast body statements first value.
	link := MetaLink new 
		metaObject: self; 
		selector: #tagExec;
		options: #(+ optionCompileOnLinkInstallation).
	sendNode link: link.
	self assert: sendNode hasMetalink.
	"method is already compiled"
	self assert: (ReflectivityExamples>>#exampleMethod) class = CompiledMethod.
	self assert: (tag isNil).
	self assert: (ReflectivityExamples new exampleMethod = 5).
	self assert: (tag = #yes).
	self assert: (ReflectivityExamples>>#exampleMethod) class = CompiledMethod.
	link uninstall. 
