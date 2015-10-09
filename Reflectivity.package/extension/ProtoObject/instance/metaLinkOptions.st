metaLinkOptions
	^{
	#isNil -> #( + optionCompileOnLinkInstallation).
	#metaLinkOptions -> #( + optionCompileOnLinkInstallation)
	}