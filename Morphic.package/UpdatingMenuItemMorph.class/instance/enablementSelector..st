enablement
enablementSelector: aSelector 
	enablementSelector := aSelector isBlock 
				ifTrue: [aSelector copyForSaving]
				ifFalse: [aSelector] 