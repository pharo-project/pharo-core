testing
testTraitObsolete
	| aClass obj aTrait |
	Smalltalk globals at: #ClassForObsoleteTest ifPresent: [ :cls | cls removeFromSystem ].
	Smalltalk globals at: #TraitForObsoleteTest ifPresent: [ :tr | tr removeFromSystem ].
	
	aTrait := Trait named: #TraitForObsoleteTest.
	aClass := Object subclass: #ClassForObsoleteTest uses: {aTrait}.

	obj := aClass new.
	self deny: aTrait isObsolete.
	aTrait removeFromSystem.
	self assert: aTrait isObsolete.
	self deny: aClass isObsolete.
	
	Smalltalk globals at: #ClassForObsoleteTest ifPresent: [ :cls | cls removeFromSystem ].
	Smalltalk globals at: #TraitForObsoleteTest ifPresent: [ :tr | tr removeFromSystem ].
