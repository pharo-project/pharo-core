startUp: resuming

	Smalltalk tools userManager canRunStartupScript ifFalse: [ ^ self ].
	
	(self allowStartupScript and: [ resuming ])
		ifTrue: [ Smalltalk addDeferredStartupAction: [ self default loadStartupScript ]]