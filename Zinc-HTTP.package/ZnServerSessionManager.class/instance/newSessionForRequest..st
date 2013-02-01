private
newSessionForRequest: request
	| id session |
	id := UUID new asString36. 
	session := ZnServerSession new.
	session id: id.
	sessions at: id put: session.
	^ session