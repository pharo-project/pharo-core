shortcuts
buildTextEditorKeymapsOn: aBuilder
	<keymap: #Unix>
	
	(aBuilder shortcut: #accept)
		category: #TextMorph
		default: $s ctrl
		do: [ :morph | morph acceptContents ].
		
	aBuilder attachShortcutCategory: #TextMorph to: TextMorph.