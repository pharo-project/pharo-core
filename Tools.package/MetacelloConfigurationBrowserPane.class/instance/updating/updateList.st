updateList
	|selected|
	selected := self configurationList selectedIndex.
	self configurationList updateList.
	self configurationList setSelectedIndex: selected.