basic api
windowTitle: titleString 
	"set the label in the window titlebar to titleString"
	title := titleString.
	windowProxy ifNotNil: [ windowProxy windowTitle: title ]