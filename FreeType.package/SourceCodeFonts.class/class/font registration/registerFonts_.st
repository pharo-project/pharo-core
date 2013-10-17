registerFonts: freeTypeFontManager

	{ OpenSansRegular. SourceCodeProRegular } do: [ :each |
		| font |
		font := each new.
		freeTypeFontManager 
			addFromFileContents: font fontContents 
			baseName: font originalFileName
	]