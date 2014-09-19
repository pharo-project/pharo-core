initISO3LanguageTable
	"self  initISO3LanguageTable"
	
	^ self readISOLanguagesFrom: self isoLanguages readStream.
	