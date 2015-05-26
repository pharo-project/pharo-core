testClassObsolete
	| aClass obj |
	self skip.
	Smalltalk globals at: #ClassForObsoleteTest ifPresent: [ :cls | cls removeFromSystem ].
	aClass := Object subclass: #ClassForObsoleteTest.
	obj := aClass new.
	self deny: aClass isObsolete.
	self deny: aClass class isObsolete.
	aClass removeFromSystem.
	self assert: aClass isObsolete.
	self assert: aClass class isObsolete