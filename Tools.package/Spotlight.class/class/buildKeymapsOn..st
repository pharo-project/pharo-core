as yet unclassified
buildKeymapsOn: aBuilder
	<keymap>
	
	(aBuilder shortcut: #openSpotlight) 
		category: #Spotlight
		default: Character cr shift
		do: [ :morph | 
			Current 
				ifNotNil: [ Current close. Current := nil ]
				ifNil: [ (Current := self new) open ]].

	aBuilder attachShortcutCategory:  #Spotlight to: Morph.