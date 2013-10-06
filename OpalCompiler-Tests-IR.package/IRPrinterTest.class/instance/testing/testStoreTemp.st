testStoreTemp
	| ir |
	ir := IRBuilderTest new testStoreTemp.
	self assert: ir longPrintString = '
label: 1
pushLiteral: 34
storeTemp: #a
popTop
pushTemp: #a
returnTop
'