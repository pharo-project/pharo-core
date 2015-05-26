initKnownLocales
	| locales |
	locales := Dictionary new.

	"Init the locales for which we have translations"
	NaturalLanguageTranslator availableLanguageLocaleIDs do: [:id |
		locales at: id put: (Locale new localeID: id)].
	^locales