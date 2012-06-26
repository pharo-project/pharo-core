metaclass
classOrMetaClassOrganizer
	"Answer the class organizer for the metaclass or class, depending on 
	which (instance or class) is indicated."

	^ self metaClassIndicated
		ifTrue: [ metaClassOrganizer]
		ifFalse: [ classOrganizer]