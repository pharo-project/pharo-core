codeCascadedMessage: selector arguments: arguments 
	"The receiver will be assigned at the end of the cascaded messages"
	^self
		codeMessage: (RBLiteralNode value: nil)
		selector: selector
		arguments: arguments