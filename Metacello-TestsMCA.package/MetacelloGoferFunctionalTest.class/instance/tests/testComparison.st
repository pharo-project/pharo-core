testComparison

	| blk |
	blk := [:file1 :operator :file2 | | ref1 ref2 |
		ref1 := GoferResolvedReference name: file1.
		ref2 := GoferResolvedReference name: file2.
		ref1 compare: ref2 using: operator].
	self assert: (blk value: 'GoferFaux-tg.34' value: #>= value: 'GoferFaux-tg.32').
	self assert: (blk value: 'GoferFaux-tg.32' value: #<= value: 'GoferFaux-tg.34').
	self assert: (blk value: 'GoferBar.branch-lr.2' value: #> value: 'GoferBar.branch-lr.1').
	self deny: (blk value: 'GoferBar-lr.1' value: #> value: 'GoferBar.branch-lr.1').
	self assert: (blk value: 'GoferBar-lr.1' value: #< value: 'GoferBar.branch-lr.1').
	self deny: (blk value: 'GoferBar-lr.1' value: #= value: 'GoferBar.branch-lr.1').
	self assert: (blk value: 'GoferBar.branch-lr.1' value: #> value: 'GoferBar-lr.1').
	self deny: (blk value: 'GoferBar.branch-lr.1' value: #< value: 'GoferBar-lr.1').
	self deny: (blk value: 'GoferBar.branch-lr.1' value: #= value: 'GoferBar-lr.1').
	self assert: (blk value: 'GoferBar-lr.1' value: #> value: 'GoferBar-jf.1').
	self deny: (blk value: 'GoferBar-lr.1' value: #< value: 'GoferBar-jf.1').
	self deny: (blk value: 'GoferBar-lr.1' value: #= value: 'GoferBar-jf.1').
	self assert: (blk value: 'Bootstrap.232-dkh.163' value: #< value: 'Bootstrap-dkh.178').
	self deny: (blk value: 'Bootstrap.232-dkh.163' value: #> value: 'Bootstrap-dkh.178').
	self deny: (blk value: 'Bootstrap.232-dkh.163' value: #= value: 'Bootstrap-dkh.178').
	self assert: (blk value: 'Bootstrap.232-dkh.178' value: #> value: 'Bootstrap-dkh.163').
	self deny: (blk value: 'Bootstrap.232-dkh.178' value: #< value: 'Bootstrap-dkh.163').
	self deny: (blk value: 'Bootstrap.232-dkh.178' value: #= value: 'Bootstrap-dkh.163').
