private
updateDetail
	detailMorph
		ifNil: [^ self].
	detailMorph
		entryDescription: (self selectedEntry descriptionWith: context).
	detailMorph position: detailPosition menuWidth: self width.
	detailMorph show