as yet unclassified
stackFrameCheck

	noStackFrame ifTrue: [
		self error: 'Operation requires stack frame management to be enabled for generated code'
		].