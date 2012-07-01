categories
removeCategory: selector
	(self organization listAtCategoryNamed: selector) do:[:sel|
		self organization removeElement: sel.
		self sourceCode removeKey: sel.
	].
	self organization removeCategory: selector.