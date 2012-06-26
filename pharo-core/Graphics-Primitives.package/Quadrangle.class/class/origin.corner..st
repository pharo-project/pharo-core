instance creation
origin: originPoint corner: cornerPoint 
	"Override Rectangles origin:corner: in order to get initialized.

	Answer an instance of me whose corners (top left and bottom right) are 
	determined by the arguments."

	^self new setOrigin: originPoint corner: cornerPoint