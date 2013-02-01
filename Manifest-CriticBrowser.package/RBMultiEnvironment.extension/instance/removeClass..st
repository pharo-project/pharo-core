*Manifest-CriticBrowser
removeClass: aClass
	environmentDictionaries keys do: [ :key |
		(environmentDictionaries at: key) removeClass: aClass ]