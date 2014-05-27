testReturn
	"Why am I overriding setUp? Because sender must be thisContext, i.e, testReturn, not setUp."
	aContext := Context sender: thisContext receiver: aReceiver method: aCompiledMethod arguments: #(). 
	self assert: (aContext return: 5) = 5.