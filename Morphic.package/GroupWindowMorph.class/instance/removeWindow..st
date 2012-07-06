windows
removeWindow: aSystemWindow
	"Remove a window from the pages."

	aSystemWindow announcer unsubscribe: self.
	self tabGroup removePage: aSystemWindow.
	aSystemWindow configureForUnembedding.
	self world addMorph: aSystemWindow