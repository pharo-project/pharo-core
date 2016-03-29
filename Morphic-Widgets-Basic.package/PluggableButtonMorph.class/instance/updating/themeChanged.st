themeChanged
	"Set the border style to thin gray in the case of going to StandardSqueak."

	self
		layoutInset: (self theme buttonLabelInsetFor: self);
		cornerStyle: (self theme buttonCornerStyleIn: self window).
		
	(self labelMorph isNil or: [self label isMorph or: [self labelMorph isTextMorph]]) ifFalse: [
		self label: self label font: self labelMorph font.
		self labelMorph color: self theme textColor
	].

	super themeChanged