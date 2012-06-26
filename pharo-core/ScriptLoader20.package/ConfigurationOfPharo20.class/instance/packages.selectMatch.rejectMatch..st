private accessing
packages: packages selectMatch: patterns rejectMatch: rejectPatterns
	^(packages 
		select: [ :each | patterns anySatisfy: [ :eachPattern | eachPattern match: each ] ])
		reject: [ :each | rejectPatterns anySatisfy: [ :eachPattern | eachPattern match: each ] ]
		