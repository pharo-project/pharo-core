accessing
switchTo: locale 
	"Locale switchTo: Locale isoLanguage: 'de'"
	Current localeID = locale localeID
		ifFalse: [Current := locale.
			CurrentPlatform := locale.
			self localeChanged]