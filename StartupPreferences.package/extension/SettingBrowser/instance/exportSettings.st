exportSettings
	| title nodes actions index groupSize |
	
	groupSize := 50.
	index := 1.
	nodes := self treeHolder nodeList.
	title := 'Exporting settings'.
	title
		displayProgressFrom: 1 
		to: nodes size 
		during: [:bar | actions := nodes collectWithIndex: [:e :i | 
											bar current: i.
											bar label: (String streamContents: [:s | 
															s << title << ' (' << (e item label) << ')']).
											e item exportSettingAction ]].
		
		actions := actions reject: [:e | e isNil ].
		
	actions groupsOf: groupSize atATimeDo: [:l | 
		StartupPreferencesLoader default addAtStartupInPreferenceVersionFolder: l named: 'exported_settings',index printString, '.st'.
		index := index +1 ].
	StartupPreferencesLoader default addAtStartupInPreferenceVersionFolder: (actions last: (actions size rem: groupSize)) named: 'exported_settings',index printString, '.st'