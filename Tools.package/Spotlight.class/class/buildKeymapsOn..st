as yet unclassified
buildKeymapsOn: aBuilder
	<keymap>
	
	(aBuilder shortcut: #openSpotlight) 
		category: #Spotlight
		default: Character cr shift
		do: [ :morph | self new toggleOpen ].

	aBuilder attachShortcutCategory:  #Spotlight to: Morph.