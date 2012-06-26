private
iso3LanguageTable
	"ISOLanguageDefinition iso3LanguageTable"

	^ISO3Table ifNil: [ISO3Table := self initISO3LanguageTable]