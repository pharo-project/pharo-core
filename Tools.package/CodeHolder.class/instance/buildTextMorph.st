builder
buildTextMorph 

	^( PluggableTextMorph
				on: self
				text: #contents
				accept: #contents:notifying:
				readSelection: #contentsSelection
				menu: #codePaneMenu:shifted:)
			font: StandardFonts codeFont;
			yourself