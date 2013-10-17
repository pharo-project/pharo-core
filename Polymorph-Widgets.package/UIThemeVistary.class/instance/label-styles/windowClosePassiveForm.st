windowClosePassiveForm
	"Answer the form to use for passive (background) window close buttons"

	^self forms at: #windowClosePassive ifAbsent: [Form extent: 14@14 depth: Display depth]