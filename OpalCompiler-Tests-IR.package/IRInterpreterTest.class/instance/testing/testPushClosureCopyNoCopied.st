testPushClosureCopyNoCopied
	| ir |
	ir := IRBuilderTest new testPushClosureCopyNoCopied.
	self shouldnt: [IRInterpreter new interpret: ir ] raise: Error