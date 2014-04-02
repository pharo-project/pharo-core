absoluteWindowsPathRegex
	"Return a copy of the regex since it is not thread-safe.
	Note: That the #copy only makes a shallow copy which is fast and but sufficient.
	Note: The slow part is parsing the regular expression, which only happens once here"
	
	"Case13065 Force re-initialization of variable during integration. 
	Subsequently next line should be removed as step 2 of integration" 
	absoluteWindowsPathRegex := '([a-zA-Z]\:)?\\.*' asRegex. 
	
	^ (absoluteWindowsPathRegex ifNil: [ 
		absoluteWindowsPathRegex := '([a-zA-Z]\:)?\\.*' asRegex ]) copy