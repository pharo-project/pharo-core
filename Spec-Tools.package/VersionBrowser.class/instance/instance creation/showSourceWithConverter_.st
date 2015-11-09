showSourceWithConverter: aConverter
	| behavior |
	
	behavior := browser textModel behavior.
	browser instantiateModels: #(textModel TextModel).
	browser textModel beForCode.
	browser needRebuild: false.
	browser openWithSpec.
	browser textModel behavior: behavior.
	browser textConverter: aConverter.
