blame_get_hunk_byindex: blame index: index
	"todo: using LGitBlameHunk* as return value causes random crashes"
	
	^ self
		call: #(void * git_blame_get_hunk_byindex #(self , uint32 index))
		options: #()