instance creation
referencesToInstanceVariable: aString in: aClass
	^ self 
		on: RBBrowserEnvironment new
		referencesToInstanceVariable: aString
		in: aClass