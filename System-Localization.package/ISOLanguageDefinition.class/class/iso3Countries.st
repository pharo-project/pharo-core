private
iso3Countries
	"ISOLanguageDefinition iso3Countries"
	"ISO2Countries := nil. ISO3Countries := nil"

	ISO3Countries ifNil: [self initISOCountries].
	^ISO3Countries