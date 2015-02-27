isHeightDependsOnChildren
	"Returns true if my height depends only from my children, otherwise false.
	It means that layouter should first position my children and only then based on their
	sizes set my height"
	
	^ self vResizing = #shrinkWrap