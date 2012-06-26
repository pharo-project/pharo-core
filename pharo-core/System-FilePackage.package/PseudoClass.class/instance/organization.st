accessing
organization
	organization ifNil: [organization := PseudoClassOrganizer defaultList: SortedCollection new].

	"Making sure that subject is set correctly. It should not be necessary."
	organization setSubject: self.
	^ organization