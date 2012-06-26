running
checkMethod: aContext 
	(self checkSelector: aContext selector) do: [ :each | 
		result
			addSearchString: each;
			addClass: aContext selectedClass selector: aContext selector ]