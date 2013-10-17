registerChangeSetShortcuts: aWidget

	aWidget bindKeyCombination: $b command toAction: [ self selectedChangeSet ifNotNil:[ self browseChangeSet ]].
	aWidget bindKeyCombination: $b shift command toAction: [ self selectedChangeSet ifNotNil:[ self openChangeSetBrowser ]].
	aWidget bindKeyCombination: $m command toAction: [ self selectedChangeSet ifNotNil:[ self setCurrentChangeSet ]].
	aWidget bindKeyCombination: $n command toAction: [ self selectedChangeSet ifNotNil:[ self newSet ]].
	aWidget bindKeyCombination: $o command toAction: [ self selectedChangeSet ifNotNil:[ self fileOut ]].
	aWidget bindKeyCombination: $r command toAction: [ self selectedChangeSet ifNotNil:[ self rename ]].
	aWidget bindKeyCombination: $p command toAction: [ self selectedChangeSet ifNotNil:[ self addPreamble ]].
	aWidget bindKeyCombination: $x command toAction: [ self selectedChangeSet ifNotNil:[ self remove ]].
	aWidget bindKeyCombination: $f command toAction: [ self findChangeSet ].
		