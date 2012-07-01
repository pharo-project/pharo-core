as yet unclassified
open
	| toolBar codePane vgap summaryPane blkPaneGap treeTopFraction treeTabPane fullReportPane |
	win := StandardWindow new model: self.
	win setLabel: 'Time profiler'.
	toolBar := self toolBarOn: win.
	treeMorph := self treeMorph buildContents; yourself.
	summaryPane := win
				newTextEditorFor: self
				getText: #summaryText
				setText: nil
				getEnabled: nil.
	fullReportPane := win
				newTextEditorFor: self
				getText: #fullReport
				setText: nil
				getEnabled: nil.
	fullReportPane getMenuSelector: #fullReportMenu:shift:. 
	codePane := win
				newTextEditorFor: self
				getText: #selectedMethodCode
				setText: #selectedMethodCode:notifying:
				getEnabled: nil.
	codePane getMenuSelector: #codePaneMenu:shifted:.
	codePane font: StandardFonts codeFont.
	self withToolBar 
		ifTrue: [vgap := toolBar minExtent y.
		win
			addMorph: toolBar
			fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (0 @ 0 corner: 0 @ vgap))]
		ifFalse: [vgap := 0].
	blkPaneGap := 0.
	treeTopFraction := 0.0.
	self withBlockCodePane
		ifTrue: [blkPaneGap := 10.
			treeTopFraction := 0.15.
			blockCodePane := win
				newTextEditorFor: self
				getText: #blockCode
				setText: #blockCode:notifying:
				getEnabled: nil.
			blockCodePane getMenuSelector: #codePaneMenu:shifted:.
			blockCodePane font: StandardFonts codeFont.
			blockCodePane alwaysAccept: true.
			win
				addMorph: blockCodePane
				fullFrame: (LayoutFrame
						fractions: (0 @ 0 corner: 1 @ treeTopFraction)
						offsets: (0 @ vgap corner: 0 @ (vgap + blkPaneGap)))].
	treeTabPane := win newTabGroup: {'Tallies Tree' -> treeMorph. 'Full report' -> fullReportPane}.
	win 
		addMorph: treeTabPane
		fullFrame: (LayoutFrame
				fractions: (0 @ treeTopFraction corner: 1 @ 0.6)
				offsets: (0 @ (vgap + blkPaneGap) corner: 0 @ 0)).
	win
		addMorph: (codeTabPane := win newTabGroup: {'Code' -> codePane. 'Statistics' -> summaryPane})
		fullFrame: (LayoutFrame
				fractions: (0 @ 0.6 corner: 1 @ 1)).
	win openInWorld.
	self startState