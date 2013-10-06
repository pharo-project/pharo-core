initializeTryNamedPrimitiveTemplateMethod
	| method |
	method := Smalltalk compiler
				class: UndefinedObject;
				source: 'tryNamedPrimitive
	"This method is a template that the Smalltalk simulator uses to 
	execute primitives. See Object documentation whatIsAPrimitive."
	<primitive:'' module:'' error: errorCode>
	^ ContextPart primitiveFailTokenFor: errorCode';
				failBlock: [ self error: 'method source is incorrect'. ];
				compile.
	TryNamedPrimitiveTemplateMethod := method.



	