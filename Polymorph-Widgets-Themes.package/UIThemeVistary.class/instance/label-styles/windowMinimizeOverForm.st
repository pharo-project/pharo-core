windowMinimizeOverForm
	"Answer the form to use for window minimise buttons with mouse over."

	^self forms at: #windowMinimizeOver ifAbsent: [Form extent: 18@18 depth: Display depth]