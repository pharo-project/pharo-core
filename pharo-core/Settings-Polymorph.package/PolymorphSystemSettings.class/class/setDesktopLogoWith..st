desktop
setDesktopLogoWith: aMorph
	self desktopLogo ifNotNil: [self desktopLogo delete].
	self desktopLogo: aMorph.
	self desktopLogo ifNotNil: [self desktopLogo openInWorld; beSticky; lock; goBehind]