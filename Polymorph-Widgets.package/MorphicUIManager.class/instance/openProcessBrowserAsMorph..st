ui requests
openProcessBrowserAsMorph: aProcessBrowser
	"Create a pluggable version of aProcessBrowser, answer a window"
	| window aTextMorph |
	window := (SystemWindow labelled: 'later')
				model: aProcessBrowser.

	aProcessBrowser deferredMessageRecipient: WorldState.
	window
		addMorph: ((PluggableListMorph
				on: aProcessBrowser
				list: #processNameList
				selected: #processListIndex
				changeSelected: #processListIndex:
				menu: #processListMenu:
				keystroke: #processListKey:from:)
				enableDragNDrop: false)
		frame: (0 @ 0 extent: 0.5 @ 0.5).
	window
		addMorph: ((PluggableListMorph
				on: aProcessBrowser
				list: #stackNameList
				selected: #stackListIndex
				changeSelected: #stackListIndex:
				menu: #stackListMenu:
				keystroke: #stackListKey:from:)
				enableDragNDrop: false)
		frame: (0.5 @ 0.0 extent: 0.5 @ 0.5).
	aTextMorph := PluggableTextMorph
				on: aProcessBrowser
				text: #selectedMethod
				accept: nil
				readSelection: nil
				menu: nil.
	aTextMorph askBeforeDiscardingEdits: false.
	aTextMorph font: StandardFonts codeFont.
	window
		addMorph: aTextMorph
		frame: (0 @ 0.5 corner: 1 @ 1).
	window setUpdatablePanesFrom: #(#processNameList #stackNameList ).
	(window setLabel: 'Process Browser') openInWorld.
	aProcessBrowser mayBeStartCPUWatcher.
	^ window