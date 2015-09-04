testInsteadReturn
	| returnNode link instance |
	self skip: #FIXE.	"VM Crash: check bytecode"
	returnNode := (ReflectivityExamples >> #exampleMethod) ast statements first.
	self assert: returnNode isReturn.
	link := MetaLink new
		metaObject: #context;
		selector: #return:;
		control: #instead;
		arguments: #(#value).
	returnNode link: link.
	self assert: returnNode hasMetalink.
	self assert: (ReflectivityExamples >> #exampleMethod) class = ReflectiveMethod.
	instance := ReflectivityExamples new.
	self assert: instance exampleMethod = 5.
	link uninstall.
	ReflectivityExamples recompile: #exampleMethod