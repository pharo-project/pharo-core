showSourceWithConverter: aConverter
	| behavior |
	
	behavior := browser textModel behavior.
	browser instantiateModels: #(textModel TextModel).
	browser needRebuild: false.
	browser openWithSpec.
	browser textConverter: aConverter.
	browser textModel behavior: behavior