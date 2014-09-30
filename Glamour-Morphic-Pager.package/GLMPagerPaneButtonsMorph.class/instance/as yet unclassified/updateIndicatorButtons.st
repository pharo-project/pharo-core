updateIndicatorButtons

	"first we uncheck all buttons"
	indicatorButtons do: [ :indicator |
		"uncheck only if not focused"
		indicator isFocused ifFalse: [ indicator buttonModel uncheck ].
	].

	"then check only necessary"
	pagerModel size > 0 ifTrue: [
		indicatorButtons from: pagerModel firstVisiblePageIndex to: pagerModel lastVisiblePageIndex do: [ :indicator |
			indicator buttonModel check.
		]
	]