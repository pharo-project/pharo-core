removeCategories

	self selectedClass 
		ifNotNil: [:class |
			self selectedCategories
				ifNotEmpty: [:items || removeACategory scroll |
					scroll := categoryWidget vScrollValue.
					removeACategory := false.
					items do: [:item || needToUpdate |
						needToUpdate := self removeCategory: item inClass: class.
						(needToUpdate and: [ removeACategory not ]) ifTrue: [ removeACategory := true].
						needToUpdate ifTrue: [ self update ]].

					removeACategory ifTrue: [ self selectedCategory: nil ].
					self update.
					categoryWidget vScrollValue: scroll. ]]