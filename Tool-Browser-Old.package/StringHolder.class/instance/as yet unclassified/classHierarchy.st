classHierarchy
	"Create and schedule a class list browser on the receiver's hierarchy."

	self systemNavigation
		browseHierarchy: self selectedClassOrMetaClass "OK if nil"
		selector: self selectedMessageName
