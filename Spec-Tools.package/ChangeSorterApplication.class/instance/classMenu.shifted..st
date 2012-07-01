menu
classMenu: aMenu shifted: shifted
	"Fill aMenu with items appropriate for the class list"

	self selectedClass ifNil: [ ^ nil ].
	aMenu title: 'Class list'.

	aMenu target: self.
	aMenu addList: #(
			-
			('Delete class from change set (d)'		forgetClass)
			('Remove class from system (x)'		removeClass)
			-
			('Browse full (b)'						browseMethodFull)
			-
			('FileOut'								fileOutClass)).

	^ aMenu