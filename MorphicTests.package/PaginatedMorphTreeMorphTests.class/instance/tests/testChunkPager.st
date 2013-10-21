testChunkPager
	"This test demonstrate a paginating morphTreeMorph in action."

	"self testExample."

	| treeMorph aWindow aModel |
	aModel := PaginatedMorphTreeModel itemsList: (1 to: 100) asArray.
	aWindow := aModel theme newWindowIn: World for: aModel title: 'test'.
	treeMorph := aModel defaultTreeMorph.
	treeMorph chunkSize: 30.
	treeMorph buildContents.
	aWindow addMorph: treeMorph fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (0 @ 0 corner: 0 @ 0)).
	aWindow open.
	aModel changed: #(#rootNodes #openItemPath 40).
	self assert: treeMorph pager lastIndex == 40.
	aWindow close