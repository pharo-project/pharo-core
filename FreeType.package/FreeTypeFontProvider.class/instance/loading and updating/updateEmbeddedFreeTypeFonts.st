updateEmbeddedFreeTypeFonts
	fontInstallers do: [ :eachInstaller | eachInstaller installAllFontsIn: self ].