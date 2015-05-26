lookupMenu
	"default implementation of the algorithm that lookup the menu"

	| default |
	default := [ self editingMode menu ].
	^ self model 
		ifNil: [ default value ] 
		ifNotNil: [ :m | m menu ifNil: [ default value ] ]