testSymbolicMetaObject
	| varNode link instance|
	varNode := (ReflectivityExamples>>#exampleAssignment) ast body statements first variable.
	link := MetaLink new 
		metaObject: #object; 
		selector: #tagExec:;
		arguments: #(newValue).
	varNode link: link.
	self assert: varNode hasMetalink.
	self assert: (tag isNil).
	instance := ReflectivityExamples new .
	self assert: (instance exampleAssignment = 3).
	self assert: (instance tag = 3).

	link uninstall. 
