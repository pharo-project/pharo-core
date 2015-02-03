calculateScrollbarHeight

	^ (((self scrollPane height) / (self scrollPane band height)) * self height) ceiling.