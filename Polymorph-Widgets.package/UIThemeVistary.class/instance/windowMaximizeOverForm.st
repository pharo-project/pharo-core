label-styles
windowMaximizeOverForm
	"Answer the form to use for window maximise buttons with mouse over."

	^self forms at: #windowMaximizeOver ifAbsent: [Form extent: 18@18 depth: Display depth]