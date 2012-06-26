accessing
selectedPackage
	| cat |
	cat := self selectedSystemCategoryName.
	cat isNil ifTrue:[^nil].
	^self packages at: cat asString ifAbsent:[nil]