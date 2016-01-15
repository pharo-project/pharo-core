drawHighlightsOn: aCanvas
	"Draw the highlights."

	| b o |
	b := self manageLayoutInBounds: self innerBounds.
	o := self scrollPane scroller offset.
	aCanvas clipBy: self clippingBounds during: [ :c | self highlights do: [ :h | h drawOn: c in: b offset: o ] ]