testReturnTop
	| ir |
	ir := IRBuilderTest new testReturnTop.
	self assert: ir longPrintString =  '
label: 1
pushLiteral: false
returnTop
'