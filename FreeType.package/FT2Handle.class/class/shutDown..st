system startup
shutDown: quitting 
	"we must not save handles (which are pointers) in the image"
	self clearRegistry.
	FreeTypeFace allInstances do:[:i | 
		"destroy any faces that are still being referenced"
		i isValid 
			ifTrue:[i destroyHandle]]. 
	FT2Handle allSubInstances do: [:h | h beNull].	"if some handle was not registered"
