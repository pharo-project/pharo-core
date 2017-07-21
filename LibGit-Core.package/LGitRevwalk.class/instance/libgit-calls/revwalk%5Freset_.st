revwalk_reset: revwalk
	
	^ self call: #(void git_revwalk_reset #(self)) options: #()