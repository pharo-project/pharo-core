shortcuts
buildTextEditorKeymapsOn: aBuilder
	<keymap>
	
	(aBuilder shortcut: #accept)
		category: #TextMorph
		default: $s ctrl win | $s ctrl unix | $s command mac
		do: [ :morph | morph acceptContents ].
		
	aBuilder attachShortcutCategory: #TextMorph to: TextMorph.