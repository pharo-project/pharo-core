contextToSelectFrom: aSession
	^ aSession assertionCallerContext ifNil: [ aSession testContext ]