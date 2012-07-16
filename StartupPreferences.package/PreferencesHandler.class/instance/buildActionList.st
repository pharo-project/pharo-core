actions
buildActionList

	"First, we look at general preferences folder then at the preferences folder, and finally at general preferences folder. All found files will be executed."
	
	| directories |
	directories := OrderedCollection new.
	directories add: [self lookInGeneralPreferencesFolder ].
	directories add: [self lookInPreferencesVersionFolder ].
	directories add: [ self lookInImageFolder ].
	^ directories