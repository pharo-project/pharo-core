layoutChanged
	super layoutChanged.
	
	self headerMorph ifNotNil: [
		|newWidth|
		newWidth := self width.
		tabSelectorWidth = newWidth ifFalse: [
			tabSelectorWidth := newWidth.
			"the difference between TabSelectorMorph and the summ of widths of all tabs is 40. I don't know why"
			"self fitLabelsIn: tabSelectorWidth - self toolbarMorph width - 40."
		].
	].