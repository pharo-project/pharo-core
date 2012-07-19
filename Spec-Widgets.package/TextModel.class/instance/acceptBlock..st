protocol
acceptBlock: aBlockWithOneArgument
	<api: #block getter: #acceptBlock registration: #whenAcceptBlockChanged:>
	"Set the block to perform when the text is accepted.
	The block must have one argument, which will be the accepted text"

	actionToPerformHolder contents: aBlockWithOneArgument