file list services
serviceInstallTrueTypeFontStyle
	"Return a service to install a true type font as a text style"

	^ SimpleServiceEntry
		provider: self
		label: 'Install ttf style'
		selector: #newTextStyleFromTTFile: 
		description: 'Install a true type font as a text style'
		buttonLabel: 'Install TTF'