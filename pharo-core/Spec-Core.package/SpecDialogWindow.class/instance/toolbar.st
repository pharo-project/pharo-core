accessing
toolbar

	^ toolbar ifNil: [ toolbar := OkCancelToolbar owner: self ]