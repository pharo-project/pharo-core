windowMinimizeDownForm
	"Answer the form to use for window minimise buttons with mouse down."

	^self forms at: #windowMinimizeDown ifAbsent: [Form extent: 18@18 depth: Display depth]