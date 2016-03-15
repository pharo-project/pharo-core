actOnClick: anEvent for: anObject in: paragraph editor: editor
	"sent when a user clicks on a piece of text to which I am applied in an editor"

	"may be self is included in the event or an Object. "
	^ actOnClickBlock cull: self cull: anEvent cull: anObject cull: paragraph cull: editor