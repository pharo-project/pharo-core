*Polymorph-Widgets
themeChanged
	"Update the selection colour."

	self selectionColor ifNotNil: [
		self selectionColor: self theme selectionColor].
	self layoutInset: self layoutInsetToUse.
	self buttonMorph extent: self buttonExtent.
	super themeChanged.
	self buttonMorph cornerStyle: self cornerStyle.
	self listMorph theme: self theme