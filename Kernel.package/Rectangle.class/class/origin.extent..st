instance creation
origin: originPoint extent: extentPoint 
	"Answer an instance of me whose top left corner is originPoint and width 
	by height is extentPoint."

	^self basicNew setOrigin: originPoint corner: originPoint + extentPoint