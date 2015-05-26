hasTagsFilter

	^ self columns anySatisfy: [ :aColumn | aColumn hasTagsFilter ]