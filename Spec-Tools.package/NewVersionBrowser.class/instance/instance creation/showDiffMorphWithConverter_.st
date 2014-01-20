showDiffMorphWithConverter: aConverter
	| behavior |
	
	behavior := browser textModel behavior.
	browser instantiateModels: #(textModel DiffModel).
	browser needRebuild: false.
	browser openWithSpec.
	browser textConverter: aConverter.
	browser textModel behavior: behavior