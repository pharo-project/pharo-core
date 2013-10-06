testPushClosureCopyNoCopied
	| ir |
	ir := IRBuilderTest new testPushClosureCopyNoCopied.
	IRInterpreter new interpret: ir