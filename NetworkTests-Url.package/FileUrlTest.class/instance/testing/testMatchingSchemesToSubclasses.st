testMatchingSchemesToSubclasses

	{ { nil. GenericUrl }. "Assume HTTP by default (i.e. when no scheme is provided)"
	{ 'isbn'. GenericUrl }. "Handle unknown Url types with GenericUrl"
	{ 'http'. HttpUrl }.
	{ 'https'. HttpsUrl }.
	{ 'file'. FileUrl }.
	{ 'mailto'. MailtoUrl }.
	{ 'browser'. BrowserUrl } } do: [ :pair | | schemeString urlClassToUse |
		schemeString := pair first.
		urlClassToUse := pair second.
		self assert: ((Url urlClassForScheme: schemeString) = urlClassToUse) ].