operations
deleteAllChildren
	"delete all children of the receiver"
	
	self children do: [:aReference | aReference deleteAll ]