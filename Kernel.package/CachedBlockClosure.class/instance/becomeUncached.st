private
becomeUncached
	self becomeForward: (BlockClosure 
					outerContext: outerContext
					startpc: startpc
					numArgs: numArgs
					copiedValues: self)