addMainMorphsWith: topOffset 

	| halfWidth |
	halfWidth := self joinMorph width / 2.

	self
		addMorph: self srcMorph
		fullFrame: (LayoutFrame identity
			rightFraction: 0.5;
			topOffset: topOffset;
			rightOffset: halfWidth negated).
	self		
		addMorph: self joinMorph
		fullFrame: (LayoutFrame identity
			leftFraction: 0.5;
			rightFraction: 0.5;
			leftOffset: halfWidth negated;
			rightOffset: halfWidth;
			topOffset: topOffset).
	
	self
		addMorph: self dstMorph
		fullFrame: (LayoutFrame identity
			leftFraction: 0.5;
			topOffset: topOffset;
			leftOffset: halfWidth;
			rightOffset: (self scrollbarMorph width + self mapMorph width) negated).
			
	self				
		addMorph: self scrollbarMorph
		fullFrame: (LayoutFrame identity
			leftFraction: 1;
			leftOffset: self scrollbarMorph width negated - self mapMorph width;
			rightOffset: self mapMorph width negated;
			topOffset: topOffset).
			
	self					
		addMorph: self mapMorph
		fullFrame: (LayoutFrame identity
			leftFraction: 1;
			leftOffset: self mapMorph width negated;
			topOffset: topOffset).