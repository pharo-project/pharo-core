generateFunctions
	" self generateFunctions   "
	
	Functions := self generateFunctionsFrom: self proxyFunctionsData.

	"checked using compiler on 32bits"
	self assert: (Functions at: #vmEndianness) index * 4 = 456.
	
	CogFunctions := self generateFunctionsFrom: self CogProxyFunctionsData.