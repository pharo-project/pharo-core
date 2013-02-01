interface building
createWindow
	"Create the package loader window."
	| buttonBar buttonBarOffset |

	buttonBar := self newRow: {
		self applyButton.
		self okButton.
		self cancelButton.
		self updateButton}.
	buttonBar cellInset: 8@0.
	buttonBarOffset := buttonBar minExtent y negated - (2 * ProportionalSplitterMorph splitterWidth).
	self 
		addMorph: (self newFontList borderWidth: 0)
		frame: (0.0 @ 0.0 corner: 0.5 @ 0.4).
	self 
		addMorph: ((styleList := self newFontStyleList) borderWidth: 0)
		frame: (0.5 @ 0.0 corner: 0.9 @ 0.4).
	self 
		addMorph: (pointSizeList := self newPointSizeList borderWidth:0)
		frame: (0.9 @ 0.0 corner: 1.0 @ 0.4).
	self 
		addMorph: self fontPreviewPanel
		fullFrame: ((0 @ 0.4 corner: 1 @1) asLayoutFrame bottomOffset: buttonBarOffset). 
	self 
		addMorph: buttonBar
		fullFrame: ((0 @1 corner: 1@1) asLayoutFrame  topOffset: buttonBarOffset)