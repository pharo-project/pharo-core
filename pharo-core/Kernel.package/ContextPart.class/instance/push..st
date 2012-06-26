controlling
push: val 
	"Push val on the receiver's stack."

	self stackp: stackp + 1.
	self at: stackp put: val