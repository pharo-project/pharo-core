instance creation
left: leftNumber right: rightNumber top: topNumber bottom: bottomNumber 
	"Answer an instance of me whose left, right, top, and bottom coordinates 
	are determined by the arguments."

	^ self basicNew setOrigin: leftNumber @ topNumber corner: rightNumber @ bottomNumber