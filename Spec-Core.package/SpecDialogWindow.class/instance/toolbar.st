accessing
toolbar
	"Lazy initialization because this method is called efore the initialize method"
	
	^ toolbar ifNil: [ toolbar := OkCancelToolbar owner: self ]