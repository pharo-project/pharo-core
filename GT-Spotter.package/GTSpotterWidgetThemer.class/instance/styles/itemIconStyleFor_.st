itemIconStyleFor: aBrick
	"icon form must already be set before styling"
	
	"making icon a bit transparent"
	aBrick normalImage: (aBrick normalImage asAlphaImageMorph alpha: self itemIconAlphaValue) cachedForm.
	
	aBrick layoutProperties
		horizontalPercent: 0;	"constant width"
		marginLeft: self titleMarginLeft;
		"margin right depends on maximal icon width and on image form width"
		marginRight: (self itemIconMaxWidth - aBrick normalImage width - aBrick layoutProperties marginLeft);
		minWidth: (aBrick normalImage width + aBrick layoutProperties horizontalMargin).