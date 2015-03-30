itemIconFor: each
	(each severity = #error) ifTrue: [ ^ Smalltalk ui icons glamorousSmallCriticsErrorIcon ].
	(each severity = #warning) ifTrue: [ ^ Smalltalk ui icons glamorousSmallCriticsWarningIcon ]. 
	^ Smalltalk ui icons glamorousSmallCriticsInformationIcon