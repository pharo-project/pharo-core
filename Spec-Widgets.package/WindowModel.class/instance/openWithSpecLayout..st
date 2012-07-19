private
openWithSpecLayout: aSpec

	window := self buildWithSpecLayout: aSpec.
	window openInWorld.
	window title: self title