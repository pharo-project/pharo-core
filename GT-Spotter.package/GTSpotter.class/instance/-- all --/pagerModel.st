pagerModel

	^ pagerModel ifNil: [
		pagerModel := self defaultPagerModel defaultNumberOfVisiblePages: 1.
		pagerModel announcer subscribe: GLMPagePoped send: #onPagePopped to: self.
		pagerModel ]