menuHolder: aBlock
	<api: #block getter: #menuHolder registration: #whenMenuHolderChanged:>
	"Set the block used to compute the menu"

	^ menuHolder contents: aBlock