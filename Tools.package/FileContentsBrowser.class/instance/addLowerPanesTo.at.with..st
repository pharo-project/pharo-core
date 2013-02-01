creation
addLowerPanesTo: window at: nominalFractions with: editString

	| verticalOffset row codePane infoPane infoHeight |

	row := AlignmentMorph newColumn
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0;
		borderWidth: 1;
		borderColor: Color black;
		layoutPolicy: ProportionalLayout new.

	codePane := PluggableTextMorph on: self text: #contents accept: #contents:notifying:
			readSelection: #contentsSelection menu: #codePaneMenu:shifted:.
	infoPane := PluggableTextMorph on: self text: #infoViewContents accept: nil
			readSelection: nil menu: nil.
	infoPane askBeforeDiscardingEdits: false.
	verticalOffset := 0.

	infoHeight := 20.
	row 
		addMorph: (codePane borderWidth: 0)
		fullFrame: (
			LayoutFrame identity
				topOffset: verticalOffset ; bottomOffset: infoHeight negated).

	row 
		addMorph: (infoPane borderWidth: 0; hideScrollBarsIndefinitely)
		fullFrame: ( (0@1 corner: 1@1) asLayoutFrame topOffset: infoHeight negated).
	window 
		addMorph: row
		frame: nominalFractions.

	row on: #mouseEnter send: #paneTransition: to: window.
	row on: #mouseLeave send: #paneTransition: to: window.

