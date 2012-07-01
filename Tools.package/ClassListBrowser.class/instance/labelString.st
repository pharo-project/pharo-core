title
labelString
	"Answer the label strilng to use on the browser"

	^ defaultTitle ifNil: [super labelString]