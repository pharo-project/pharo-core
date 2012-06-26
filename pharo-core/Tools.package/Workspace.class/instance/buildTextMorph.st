toolbuilder
buildTextMorph 

	| morph |
	morph := super buildTextMorph.
	morph font: StandardFonts codeFont.
	morph styler workspace: self.
	^ morph