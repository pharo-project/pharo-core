method
methodHierarchyFrom: aMethod
	"Create and schedule a method browser on the hierarchy of implementors."

	self systemNavigation 
			methodHierarchyBrowserForClass: aMethod methodClass
			selector: aMethod selector