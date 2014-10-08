popPane

	self invariant.
	
	pagesCount >= 1 ifTrue: [
		|scrollTo|
		
		focusedMorphs removeKey: pagesCount  ifAbsent: [ true ].
		pagesCount := pagesCount - 1.
		
		lastVisiblePageIndex > pagesCount ifTrue: [
			firstVisiblePageIndex := firstVisiblePageIndex - 1.
			lastVisiblePageIndex := lastVisiblePageIndex - 1.
		].
	
		firstVisiblePageIndex < 1 ifTrue: [
			firstVisiblePageIndex := 1.
		].
	
		pagesCount = 0 ifTrue: [
			selectedPageIndex := 0.
		].
		
		selectedPageIndex > pagesCount ifTrue: [
			self selectedPageIndex: pagesCount.
		].
	
		scrollTo := ((pagesCount = firstVisiblePageIndex) & (pagesCount > self numberOfVisiblePages)).
		self notifyPagePoped.
		
		

	].

	self invariant.