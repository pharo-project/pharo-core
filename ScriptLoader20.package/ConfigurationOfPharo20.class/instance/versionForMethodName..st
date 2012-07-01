private accessing
versionForMethodName: aString
	^aString reject: [ :each | #($. $-) includes: each ]