removeMethods

	self selectedClass 
		ifNotNil: [:class |
			self selectedMethods
				ifNotEmpty: [:items || scroll needToUpdate |
					scroll := methodWidget vScrollValue.
					needToUpdate := self removeMethods: items inClass: class.
					
					needToUpdate ifTrue: [ 
						self resetMethodsListSelection.
						methodWidget updateList ].
					
					(class methods includes: self selectedMethod)
						ifFalse: [ self selectedMethod: nil ].
						
					self resetMethodsListSelection.
					methodWidget
						updateList;
						vScrollValue: scroll. ]]