private
getList

	^ listElements ifNil: [ listElements := self loadList ].