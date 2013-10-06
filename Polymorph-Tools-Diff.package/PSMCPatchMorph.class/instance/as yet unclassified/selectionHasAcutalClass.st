selectionHasAcutalClass
	"Answer whether the currently selected change has an actual
	class in the image."

	^self selectedChangeWrapper
		ifNil: [false]
		ifNotNilDo: [:w | w actualClass notNil]