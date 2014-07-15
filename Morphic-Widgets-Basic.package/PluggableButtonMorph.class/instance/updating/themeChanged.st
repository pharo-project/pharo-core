themeChanged
	"Set the border style to thin gray in the case of going to StandardSqueak."

	|labelColor|
	self
		layoutInset: (self theme buttonLabelInsetFor: self);
		cornerStyle: (self theme buttonCornerStyleIn: self window).
	(self labelMorph isNil or: [self label isMorph or: [self labelMorph isTextMorph]]) ifFalse: [
		labelColor := self labelMorph color.
		self label: self label font: self labelMorph font.
		self labelMorph color: labelColor].
	super themeChanged