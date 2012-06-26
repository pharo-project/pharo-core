pretty printing
prettyPrinterClassFor: aBehavior
	|defaultPrinter|
	defaultPrinter := self default.
	^ (defaultPrinter isNil or: [defaultPrinter = self])
		ifTrue: [aBehavior compilerClass]
		ifFalse: [self default prettyPrinterClassFor: aBehavior]