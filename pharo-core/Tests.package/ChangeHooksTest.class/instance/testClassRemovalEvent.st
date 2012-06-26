Testing-Classes
testClassRemovalEvent
	"This event used to be sent efter the class was removed.
	This was changed, and therefore this test is useless currently."
	
	"Keep it, since I really want to check with the responsible for the ChangeSet,
	and it is very likely this will be reintroduced afterwards!"

"	| createdClass |
	createdClass := self compileUniqueClass.
	self systemChangeNotifier notify: self
		ofAllSystemChangesUsing: #classRemovalEvent:.
	createdClass removeFromSystem.
	self checkForOnlySingleEvent
	
	"