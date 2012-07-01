interpreting
interpretASpec: aPresenter
	| index anArray specToProvide |

	aPresenter ifNil: [ ^ nil ].
	
	anArray := aPresenter.
	aPresenter isSpecLayout ifTrue: [ anArray := aPresenter asArray ].
	
	(anArray isCollection and: [anArray isSequenceable]) ifFalse: [ ^ anArray ].
	(aPresenter isString or: [ aPresenter isText ]) ifTrue: [ 
			^ aPresenter == #model
				ifTrue: [ model ]
				ifFalse: [ self convertSymbolOfClassToInstance: aPresenter ]].

	" aPresenter is an Array "
	"First element is a symbol describing the spec type"
	spec := self retreiveSpecFrom: anArray first.
	spec class = RawSpec 
		ifTrue: [ specToProvide := superSpec ]
		ifFalse: [ specToProvide := spec ].
	spec addAsSubSpecTo: superSpec.
	index := 2.	
	
	[ index <= anArray size ]
		whileTrue: [ | selector numArgs args newInstance |
			selector := spec bindings retrieveSelectorSymbolFor: (anArray at: index).
			selector isArray not
				ifTrue: [ 
					selector := selector asSymbol.
					numArgs := selector numArgs.
					args := anArray copyFrom: index + 1 to: index + numArgs ]
				ifFalse: [| array |
					"Here I assume that if it's not a symbol, it's a collection"
					array := selector.
					selector := array first.
					numArgs := 0.
					args := array allButFirst ].
				args := args collect: [:each | self class interpretASpec: each model: model superSpec: specToProvide ].
				index := index + numArgs + 1.
				newInstance := self actionToPerformWithSelector: selector arguments: args.
			index > anArray size
				ifTrue: [
					| result |
					(model respondsTo: #spec:)
						ifTrue: [ model spec: spec ].
					result := self class interpretASpec: newInstance model: spec instance superSpec: specToProvide.
					(result isKindOf: ComposableModel)
						ifTrue: [| return | 
							return := result buildWithSpec.
							result spec addAsSubSpecTo: superSpec.
							^ return ]
						ifFalse: [ ^ result ]].
			spec instance: newInstance ].
			
	"If you get here, there is a problem. Must probably it comes from the Spec which is wrongly defined"
	self assert: (anArray size < 2).
	^ spec instance