itemIconStyleFor: aBrick
	"icon form must already be set before styling"
	aBrick layoutProperties horizontalPercent: 0.	"constant width"
	aBrick layoutProperties marginLeft: self titleMarginLeft.
	"margin right depends on maximal icon width and on image form width"
	aBrick layoutProperties marginRight: (self itemIconMaxWidth - aBrick normalImage width - aBrick layoutProperties marginLeft).
	aBrick layoutProperties minWidth: (aBrick normalImage width + aBrick layoutProperties horizontalMargin).
	"making icon a bit transparent"
	aBrick normalImage: (aBrick normalImage asAlphaImageMorph alpha: self itemIconAlphaValue) cachedForm