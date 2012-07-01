what to show
setContentsToForceRefetch
	"Set the receiver's contents such that on the next update the contents will be formulated afresh.  This is a critical and obscure difference between Browsers on the one hand and MessageSets on the other, and has over the years been the source of much confusion and much difficulty.  By centralizing the different handling here, we don't need so many idiosyncratic overrides in MessageSet any more"

	contents := nil