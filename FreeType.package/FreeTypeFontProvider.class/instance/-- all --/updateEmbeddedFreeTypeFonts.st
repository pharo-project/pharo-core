updateEmbeddedFreeTypeFonts
	fontInstallers do: [ :each | each installAllFontsIn: self ].
	self buildFamilies