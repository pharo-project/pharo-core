visitBlockNode: aBlockNode
	"here look at the temps and make copying vars / tempVector out of them"
	scope := aBlockNode scope.	
	self doRemotes; doCopying.
	self visitNode: aBlockNode body.
	scope := scope popScope.