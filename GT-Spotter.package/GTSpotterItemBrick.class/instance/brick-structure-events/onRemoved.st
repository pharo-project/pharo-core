onRemoved
	super onRemoved.
	"I must not receive any announcements as soon as i'm removed from dom"
	self stepModel ifNotNil: [ self stepModel announcer unsubscribe: self ]