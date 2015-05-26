addWindow: aSystemWindow
  "Add an existing window to the pages."

	|tab|
	SystemWindow topWindow = aSystemWindow
		ifTrue: [SystemWindow passivateTopWindow].
	self tabGroup
		addPage: aSystemWindow configureForEmbedding
		label: (self tabLabelFor: aSystemWindow);
		selectedPageIndex: self tabGroup pages size.
	self isActive ifFalse: [self tabGroup selectedTab passivate].
	tab := self tabGroup selectedTab.
	tab
		on: #startDrag
		send: #dragTab:event:in:
		to: self
		withValue: aSystemWindow.
	aSystemWindow announcer
		when: WindowLabelled 
		send: #onWindowLabelChanged:
		to: self