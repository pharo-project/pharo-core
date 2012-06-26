visitor-double dispatching
acceptCascadeNode: aCascadeNode 
	aCascadeNode messages do: [:each | self visitNode: each]