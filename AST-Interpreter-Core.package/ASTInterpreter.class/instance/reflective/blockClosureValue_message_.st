blockClosureValue: aBlockClosure message: aMessage
	|newMessage|
	newMessage := Message selector: #valueWithArguments: arguments: (Array with: aMessage arguments).
	^self blockClosureValueWithArguments: aBlockClosure message: newMessage