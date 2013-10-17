textMorph
	| text |
	text := PluggableTextMorph
				on: self
				text: #trash
				accept: #trash:
				readSelection: #contentsSelection
				menu: #codePaneMenu:shifted:.
	text askBeforeDiscardingEdits: false.
	^ text