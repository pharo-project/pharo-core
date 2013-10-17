buildMorphicCommentPane
	"Construct the pane that shows the class comment.
	Respect the setting StandardFonts codeFont."

	| commentPane |
	commentPane := BrowserCommentTextMorph
				on: self
				text: #classCommentText
				accept: #classComment:notifying:
				readSelection: nil
				menu: #codePaneMenu:shifted:.
	commentPane font: StandardFonts codeFont.
	^ commentPane