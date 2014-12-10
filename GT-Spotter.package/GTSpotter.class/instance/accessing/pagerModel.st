pagerModel

	^ pagerModel ifNil: [
		pagerModel := GLMPagerModel new defaultNumberOfVisiblePages: 1.
		pagerModel announcer subscribe: GLMPagePoped send: #onPagePopped to: self.
		pagerModel ]