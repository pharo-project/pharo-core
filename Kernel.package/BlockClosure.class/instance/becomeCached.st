private
becomeCached
	self becomeForward: ((CachedBlockClosure new: self size)
						outerContext: outerContext
						startpc: startpc
						numArgs: numArgs
						cachedValue: self value
						copiedValues: self)