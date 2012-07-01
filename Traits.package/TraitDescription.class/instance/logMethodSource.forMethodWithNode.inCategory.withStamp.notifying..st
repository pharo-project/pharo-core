private
logMethodSource: aText forMethodWithNode: aCompiledMethodWithNode inCategory: category withStamp: changeStamp notifying: requestor 
	aCompiledMethodWithNode method
		putSource: aText
		fromParseNode: aCompiledMethodWithNode node
		class: self
		category: category
		withStamp: changeStamp 
		inFile: 2
		priorMethod: (self
				compiledMethodAt: aCompiledMethodWithNode selector
				ifAbsent: [])