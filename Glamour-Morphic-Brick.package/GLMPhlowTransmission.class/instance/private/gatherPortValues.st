gatherPortValues
	"returns a Collection containing values of all assosiated origins"
	^ self origins collect: [ :each | each slot read: each phlowObject ]