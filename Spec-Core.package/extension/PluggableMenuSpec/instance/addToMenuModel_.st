addToMenuModel: aMenuModel
	| groups tmp |
	
	groups := OrderedCollection new.
	aMenuModel title: self label.
	
	tmp := OrderedCollection new.
	self items do: [ :each | 
		tmp add: each.
		each separator
			ifTrue: [ 
				groups add: tmp copy.
				tmp removeAll ] ].
	
	groups do: [ :each | aMenuModel 
		addGroup: [ :group | each do: [ :spec | 
			group addItem: [ :item | item fromSpec: spec ] ] ] ]