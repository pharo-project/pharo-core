buildMorphicMessageList
	"Build a morphic message list, with #messageList as its list-getter"

	| aListMorph |
	(aListMorph := PluggableListMorph new) 
			on: self list: #messageList
			selected: #messageListIndex changeSelected: #messageListIndex:
			menu: #messageListMenu:shifted:
			keystroke: #messageListKey:from:.
	aListMorph enableDragNDrop: true.
	aListMorph menuTitleSelector: #messageListSelectorTitle.
	^aListMorph

