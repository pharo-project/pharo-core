methodDictAddSelectorSilently: selector withMethod: compiledMethod
	self deprecated: 'use #basicAddSelector:withMethod' on: ' 12 November 2015' in: 'Pharo 5'.
	self basicAddSelector: selector withMethod: compiledMethod