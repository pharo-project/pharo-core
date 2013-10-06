example3
	" it's my personal script provided as example"
	"self example3"
	| items |
	items := OrderedCollection new.
	items add: (StartupAction name: 'Self halt' code: [ self halt ]). "replace it by your name"
	items add: (StartupAction name: 'WS' code: [ Workspace open ]). "replace it by your name"
	StartupPreferencesLoader default addAtStartupInPreferenceVersionFolder: items named: 'author.st'.

	StartupPreferencesLoader default loadFromDefaultLocations.