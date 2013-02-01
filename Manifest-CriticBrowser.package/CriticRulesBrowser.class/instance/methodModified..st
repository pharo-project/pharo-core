system annoucements
methodModified: anAnnouncement
"checks if a modification of a method fixes a warning. if true,  the true positives in the browser are update"
"checks  if  a method of a manifest class is modified and update false positive in the browser"
	| class  |
	
	class := anAnnouncement methodClass.
	class isManifest 
		ifTrue: [ self updateCountOf: (rulesModel selectedItem).
			self updateTree
.			^ self].
		
	(criticModel criticsModelContains: anAnnouncement oldMethod)
		ifFalse: [^ self].
		
	self reapplyThisRule	
