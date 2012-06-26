testing
methodsInCategory: aString ofClass: aClass 
	^Array streamContents: [:stream |
		self methodsInCategory: aString ofClass: aClass 
			do: [:each | stream nextPut: each]]
