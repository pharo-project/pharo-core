testComparison01

	| ref1 ref2 |
	ref1 := GoferResolvedReference name: 'Bootstrap.232-dkh.163'.
	ref2 := GoferResolvedReference name: 'Bootstrap-dkh.178'.
	self assert: (ref1 compare: ref2 using: #<).
	self assert: (ref2 compare: ref1 using: #>).
	self deny: (ref2 compare: ref1 using: #=).

