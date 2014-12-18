openHelp

	TextModel new
		text: self class helpText translated;
		title: self class popupText translated;
		openDialogWithSpec
	"UIManager default
		longMessage: self class helpText translated
		title: self class popupText translated"