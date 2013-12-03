removeRepository
	| item |
	
	item := remotes selectedItem content.
	MCRepositoryGroup default
		removeRepository: item remote.
		
	remotes 
		roots: self buildRoots;
		highlightedItem: nil