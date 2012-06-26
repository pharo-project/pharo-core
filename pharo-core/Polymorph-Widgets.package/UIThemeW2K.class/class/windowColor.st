accessing
windowColor
	"UIThemeWatery3 windowColor: nil."
	windowColor ifNil: [self windowColor: (Color gray: 0.5)].
	^windowColor