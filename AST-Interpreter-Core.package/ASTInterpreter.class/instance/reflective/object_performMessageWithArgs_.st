object: receiver performMessageWithArgs: aMessage	
	"transform the perform:withArguments: method in perform:withArguments:inSuperclass: understood by ast-interpreter"
	
	| arguments newMessage|
	
	arguments := Array new: 3.
	arguments at: 1 put: aMessage arguments first. "selector"
	arguments at: 2 put: aMessage arguments second. "arguments"
	arguments at: 3 put: (self classOf: receiver). "lookup class"
	
	newMessage := Message selector: aMessage selector arguments: arguments.

	^ self object: receiver performMessageInSuperclass: newMessage	
	