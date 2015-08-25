testInsteadReturn
	| returnNode link instance|
	self skip. "seems to crash the VM sometimes"
	returnNode := (ReflectivityExamples>>#exampleMethod) ast statements first.
	link := MetaLink new 
		metaObject: #context; 
		selector: #return:;
		control: #instead;
		arguments: #(value).
	returnNode link: link.
	self assert: returnNode hasMetalink.
	self assert: (ReflectivityExamples>>#exampleMethod) class = ReflectiveMethod.
	instance := ReflectivityExamples new.
	self assert: (instance exampleMethod = 5).
	link uninstall. 
