hackOwner: aRepository
	"There is a bug in version 0.23 of libgit2, the returned index does not have an 
	 owner (a pointer to a repository), as you would expect from the documentation. 
	This breaks libgit encapsulation, and will probably fail if updating to a newer 
	version, but anyway if we migrate this bug should be fixed."
	self flag: #fixMe. "When possible :)"
	"
	NOTE: is Smalltalk wordSize + 1 because the structure is something like: 
	struct git_index {
		git_refcount rc;
 		...
	}
	
	then:
	
	struct git_refcount { 
		git_atomic refcount;
		void *owner;
	}
	
	and finally: 
	git_atomic = int -> 32bits
	git_atomic = int64_t -> 64bits
	
	So we need to ensure the owner is set properly.
	"
	self handle 
		pointerAt: Smalltalk wordSize + 1
		put: repository handle