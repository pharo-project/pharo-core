activateMethod: newMethod withArgs: args receiver: rcvr class: class 
	"Answer a ContextPart initialized with the arguments."

	^Context 
		sender: self
		receiver: rcvr
		method: newMethod
		arguments: args