isHeightDependsOnWidth
	"Returns true if my height depends from my width, otherwise false.
	It means that layouter must first calculate my width and as soon as it is done my height"
	
	^ self vResizing = #opposite