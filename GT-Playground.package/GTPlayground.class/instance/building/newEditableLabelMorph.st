newEditableLabelMorph
	| hPadding |
	
	hPadding := 5.
	^ GLMEditableLabelBrick new
		hSpaceFill;
		text: self entity title;
		with: [ :label | label when: #onAccepted do: [ self entity title: label text ] ];
		cancelOnEscape;
		cancelOnFocusLost;
		with: [ :b | b margin: { b themer focusedBorderWidth . 0 } ];
		with: [ :b | b editBrick
			hShrinkWrap;
			rubricBackgroundColor: b themer rubricBackgroundColor;
			margins: (hPadding@0 corner: hPadding@0) ];
		with: [ :b | b maxWidth: [ b approximateWidth + b owner hPadding] ];
		with: [ :b | b labelBrick margin: { 0 . hPadding + 2. 0 . hPadding } ];
		with: [ :b | b layout widthDependency: [ b owner ] ];
		with: [ :b | b editBrick layout widthDependency: [ b ] ];
		yourself 