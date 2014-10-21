testRemoteTemp
	| ir |
	ir := IRBuilderTest new testRemoteTemp.
	self assert: ir longPrintString  =  '
label: 1
createTempVectorNamed: #methodVector withVars: #(#b)
pushLiteral: 1
popIntoTemp: #a
pushClosureCopyCopiedValues: #(#a #c #methodVector) args: #()

label: 2
pushTemp: #a
pushLiteral: 1
send: #+
popIntoRemoteTemp: #b inVector: #methodVector
blockReturnTop

label: 3
send: #value
pushRemoteTemp: #b inVector: #methodVector
returnTop
'