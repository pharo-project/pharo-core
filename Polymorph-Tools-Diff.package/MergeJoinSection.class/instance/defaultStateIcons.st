as yet unclassified
defaultStateIcons
	"Answer the default state icons."
	| uiTheme |
	uiTheme :=self theme.
	^{uiTheme  smallBackIcon.
		uiTheme  smallForwardIcon.
		uiTheme  smallOkIcon.
		uiTheme  smallCancelIcon}