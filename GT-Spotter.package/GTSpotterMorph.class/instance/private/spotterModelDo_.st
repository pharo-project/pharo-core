spotterModelDo: aBlock
	self spotterModel handleExceptionsDuring: [ 
		aBlock value.
		self handleProcessorKeyBindings ]