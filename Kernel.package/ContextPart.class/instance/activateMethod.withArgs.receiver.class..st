controlling
activateMethod: newMethod withArgs: args receiver: rcvr class: class 
	"Answer a ContextPart initialized with the arguments."

	^MethodContext 
		sender: self
		receiver: rcvr
		method: newMethod
		arguments: args