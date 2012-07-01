private
iso2Countries
	"ISOLanguageDefinition iso2Countries"
	"ISO2Countries := nil. ISO3Countries := nil"

	ISO2Countries ifNil: [self initISOCountries].
	^ISO2Countries