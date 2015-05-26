text: aText
	self okToStyle
		ifFalse: [ ^ next text: aText ].
	self
		disableDrawingWhile: [
			aText addAttribute: self defaultFontChange.
			next text: (text := (self styler format: aText)).
			self style: text]