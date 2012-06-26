accessing
setNewImageFrom: formOrNil
	"Change the receiver's image to be one derived from the supplied form.  If nil is supplied, clobber any existing image in the receiver, and in its place put a default graphic, either the one known to the receiver as its default value, else a squeaky mouse"

	|  defaultImage |
	formOrNil ifNotNil: [^ self image: formOrNil].
	defaultImage := self theme squeakyMouseIcon.
	self image: defaultImage
