private
initISO3LanguageTable
	"ISOLanguageDefinition initIso3LanguageTable"

	| table |
	table := ISOLanguageDefinition readISOLanguagesFrom: ISOLanguageDefinition isoLanguages readStream.
	table addAll: self extraISO3Definitions.
	^table