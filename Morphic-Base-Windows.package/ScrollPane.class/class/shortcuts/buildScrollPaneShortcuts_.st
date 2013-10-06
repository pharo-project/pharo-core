buildScrollPaneShortcuts: aBuilder
	"Note: the ctrl up and down don't work because they are transformed at the very beginning as mousewheel ctrl up and ctrl down. But why and how ? TG 15/09/2012."

	<keymap>
	(aBuilder shortcut: #scrollUp)
		category: #ScrollPane
		default: Character arrowUp ctrl | Character arrowUp command mac
		do: [ :target | target scrollBar scrollUp: 3 ].
	(aBuilder shortcut: #scrollDown)
		category: #ScrollPane
		default: Character arrowDown ctrl | Character arrowDown command mac
		do: [ :target | target scrollBar scrollDown: 3 ].