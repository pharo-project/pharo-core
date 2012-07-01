accessing
itemPackageName
	"It cannot be self itemClass package name since itemClass refer to the new class which is not in
	the current RPackageOrganizer - because we are currently in the process of rename it.
	
	It cannot be  (Smalltalk globals at: self oldName) package name because oldName class is not anymore in Smalltalk globals."
	^ self event itemCategory
	