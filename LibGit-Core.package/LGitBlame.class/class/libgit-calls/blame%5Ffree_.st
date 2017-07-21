blame_free: handle
	^ self call: #(void git_blame_free #(void *handle)) options: #()