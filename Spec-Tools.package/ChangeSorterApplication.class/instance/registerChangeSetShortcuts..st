shortcuts
registerChangeSetShortcuts: aWidget

	aWidget on: $b command do: [ self selectedChangeSet ifNotNil:[ self browseChangeSet ]].
	aWidget on: $b shift command do: [ self selectedChangeSet ifNotNil:[ self openChangeSetBrowser ]].
	aWidget on: $m command do: [ self selectedChangeSet ifNotNil:[ self setCurrentChangeSet ]].
	aWidget on: $n command do: [ self selectedChangeSet ifNotNil:[ self newSet ]].
	aWidget on: $o command do: [ self selectedChangeSet ifNotNil:[ self fileOut ]].
	aWidget on: $r command do: [ self selectedChangeSet ifNotNil:[ self rename ]].
	aWidget on: $p command do: [ self selectedChangeSet ifNotNil:[ self addPreamble ]].
	aWidget on: $x command do: [ self selectedChangeSet ifNotNil:[ self remove ]].
	
	aWidget on: $f command do: [ self findChangeSet ].
		