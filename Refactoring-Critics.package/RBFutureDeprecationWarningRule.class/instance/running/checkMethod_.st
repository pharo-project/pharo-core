checkMethod: aMethod 

	self oldSelectors 
		detect: [ :oldSelector | 
			aMethod sendsSelector: oldSelector ]
		ifFound: [ :oldSelector |
			result
				addMethod: aMethod;
				addSearchString: oldSelector ]
	