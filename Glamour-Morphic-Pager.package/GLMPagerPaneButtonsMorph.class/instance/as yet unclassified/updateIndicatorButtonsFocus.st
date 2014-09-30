updateIndicatorButtonsFocus

	"unfocus all"
	indicatorButtons do: [ :each |
		 each setNotFocused.
	].
	
	"because it's possible when nothing has focus"
	pagerModel focusedPageIndex ifNotNil: [ (indicatorButtons at: pagerModel focusedPageIndex) setFocused ].
	