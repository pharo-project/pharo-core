initialize 
	self canBeInstalled 
		ifTrue: [ EmbeddedFreeTypeFontInstaller registerFont: self ]