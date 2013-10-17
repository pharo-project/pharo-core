classTagNames
	^ (Set with: self packageName), (self classTags collect: #name).