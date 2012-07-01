accessing
isoLanguage: isoLanguage
	"Return the generic language translator as there is no information about the country code"

	^self isoLanguage: isoLanguage isoCountry: nil