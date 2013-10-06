alpha: alphaValue
	alphaValue = 1.0 ifTrue:
		[^ Color basicNew
			setPrivateRed: self privateRed
			green: self privateGreen
			blue: self privateBlue].
	^ super alpha: alphaValue