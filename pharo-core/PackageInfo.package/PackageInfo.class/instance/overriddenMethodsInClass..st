listing
overriddenMethodsInClass: aClass
	^Array streamContents: [:stream |
		self overriddenMethodsInClass: aClass
			do: [:each | stream nextPut: each]]
