popStep

	"there always should be minimum one step left"
	(self steps size > 1)
		ifTrue: [
			self steps removeLast.
			self notifyStepPopped.
			"perform pane popping only after we scrolled to the penultimate pane, so user doesn't see blinking"
			self pagerModel
				scrollToPane: (self steps size)
				callback: [ self pagerModel popPane: false ] ]