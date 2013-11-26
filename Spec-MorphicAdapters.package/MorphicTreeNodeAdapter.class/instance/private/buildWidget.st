buildWidget
	"This is done this way to prevent the recursive building of the model"

	^ super buildWidget
		model: self container;
		nodeModel: self model;
		yourself