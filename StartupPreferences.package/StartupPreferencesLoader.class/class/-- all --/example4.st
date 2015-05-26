example4
	"self example4"
	| items |
	items := OrderedCollection new.
	
	items add: (StartupAction name: 'General Preferences for all Pharo versions' code: [ 
		FileStream stdout lf; nextPutAll: 'Setting general preferences for all Pharo versions'; lf.
		FileStream stdout lf; nextPutAll: 'Finished'; lf.
		 ]).
	StartupPreferencesLoader default addAtStartupInGeneralPreferenceFolder: items named: 'generalSettings.st'.
	
	items removeAll.
	items add: (StartupAction name: 'Settings' code: [ 
		FileStream stdout lf; nextPutAll: 'Setting general preferences for Pharo 2.0'; lf.
		FileStream stdout lf; nextPutAll: 'Finished'; lf.
		 ]).
	StartupPreferencesLoader default addAtStartupInPreferenceVersionFolder: items named: 'settings.st'.
	
	items removeAll.
	items add: (StartupAction name: 'Image diretory' code: [ 
		FileStream stdout lf; nextPutAll: 'Setting preferences for image directory'; lf.
		FileStream stdout lf; nextPutAll: 'Finished'; lf.
		 ]).
	StartupPreferencesLoader default addAtStartupInImageDirectory: items 