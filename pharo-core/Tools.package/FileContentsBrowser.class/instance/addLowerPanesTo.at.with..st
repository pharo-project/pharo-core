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

">>not with this browser--- at least not yet ---
	innerFractions := 0@0 corner: 1@0.
	verticalOffset := self addOptionalAnnotationsTo: row at: innerFractions plus: verticalOffset.
	verticalOffset := self addOptionalButtonsTo: row  at: innerFractions plus: verticalOffset.
<<<<"

	infoHeight := 20.
	row 
		addMorph: (codePane borderWidth: 0)
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 1@1) 
				offsets: (0@verticalOffset corner: 0@infoHeight negated)
		).

	row 
		addMorph: (infoPane borderWidth: 0; hideScrollBarsIndefinitely)
		fullFrame: (
			LayoutFrame 
				fractions: (0@1 corner: 1@1) 
				offsets: (0@ infoHeight negated corner: 0@0)
		).
	window 
		addMorph: row
		frame: nominalFractions.

	row on: #mouseEnter send: #paneTransition: to: window.
	row on: #mouseLeave send: #paneTransition: to: window.

