private
text: t textStyle: ts foreground: foreColor background: backColor fillBlt: blt ignoreColorChanges: shadowMode
	text := t.
	textStyle := ts. 
	foregroundColor := paragraphColor := foreColor.
	(backgroundColor := backColor) isTransparent ifFalse:
		[fillBlt := blt.
		fillBlt fillColor: backgroundColor].
	ignoreColorChanges := shadowMode