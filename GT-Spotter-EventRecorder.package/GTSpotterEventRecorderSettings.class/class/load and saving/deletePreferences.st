deletePreferences
	"self deletePreferences"
	[ self preferences ensureDelete ]
	on: Error do: [ "ignore" ]