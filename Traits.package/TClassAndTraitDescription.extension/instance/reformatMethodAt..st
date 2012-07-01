compiling
reformatMethodAt: selector
	| newCodeString method |
	newCodeString := self prettyPrinterClass 
				format: (self sourceCodeAt: selector)
				in: self
				notifying: nil.
	method := self compiledMethodAt: selector.
	method 
		putSource: newCodeString
		fromParseNode: nil
		class: self
		category: (self organization categoryOfElement: selector)
		inFile: 2
		priorMethod: method
