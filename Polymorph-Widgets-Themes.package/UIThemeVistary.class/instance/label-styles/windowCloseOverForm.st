windowCloseOverForm
	"Answer the form to use for window close buttons with mouse over."

	^self forms at: #windowCloseOver ifAbsent: [Form extent: 18@18 depth: Display depth]