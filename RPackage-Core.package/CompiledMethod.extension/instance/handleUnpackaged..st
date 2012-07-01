*rpackage-core
handleUnpackaged: anRPackageOrganizer
	| tmpTrait |
	tmpTrait := self methodClass traitComposition traitProvidingSelector: self selector.
	
	tmpTrait isNil ifFalse: [
		(tmpTrait packages select: [ :aRPackage | 
			aRPackage includesSelector: self selector ofClass: tmpTrait ]) isEmpty 
				ifFalse: [ ^ self ]].
 
	self error: 'Yes... method is unpackaged and I don''t know what to do with this.'.
"	self halt.
	self category isNil
		ifTrue: [ Error signal ].
		
	anRPackageOrganizer
		systemMethodAddedActionFrom:
			(AddedEvent
				method: self
				selector: self selector
				protocol: self category
				class: self methodClass) asSystemAnnouncement"