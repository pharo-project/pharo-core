example
	" an example of script generation "
	| item1 item2 |
	item1 := StartupAction name: 'Open Help' code: 'Workspace openContents: ''Here is just an example of how to use the StartupLoader.
I should only be displayed once.
	
 You can also see StartupLoader class>>#example'' label: ''Help''' runOnce: true.
	item2 := StartupAction name: 'Open Workspace' code:  [ Workspace openContents: 'I should be displayed each time' ].
	StartupPreferencesLoader default addAtStartupInGeneralPreferenceFolder: {item1. item2}.
	
	StartupPreferencesLoader default loadFromDefaultLocations.
	StartupPreferencesLoader default loadFromDefaultLocations.