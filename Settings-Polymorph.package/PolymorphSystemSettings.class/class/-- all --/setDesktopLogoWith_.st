setDesktopLogoWith: aMorph
	self desktopLogo ifNotNil: [self desktopLogo delete].
	self desktopLogo: aMorph.
	self desktopLogo ifNotNil: [
		self desktopLogo 
			openInWorld; 
			top: HandMorph upperHandLimit;
			beSticky; 
			lock; 
			goBehind]