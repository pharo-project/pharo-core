as yet unclassified
initializeSlider
	"Make the slider raised."
	
	slider :=( BracketMorph newBounds: self totalSliderArea)
		horizontal: self bounds isWide;
		color: self thumbColor;
		borderStyle: (BorderStyle raised baseColor: Color white; width: 1).
	sliderShadow := (BracketMorph newBounds: self totalSliderArea)
		horizontal: self bounds isWide;
		color: self pagingArea color;
		borderStyle: (BorderStyle inset baseColor: (Color white alpha: 0.6); width: 1).
	slider on: #mouseMove send: #scrollAbsolute: to: self.
	slider on: #mouseDown send: #mouseDownInSlider: to: self.
	slider on: #mouseUp send: #mouseUpInSlider: to: self.
	"(the shadow must have the pagingArea as its owner to highlight properly)"
	self pagingArea addMorph: sliderShadow.
	sliderShadow hide.
	self addMorph: slider.
	self computeSlider.
