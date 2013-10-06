wantsDroppedMorph: transferMorph event: anEvent inMorph: destinationLM 
	"We are only interested in TransferMorphs as wrappers for             
	informations. If their content is really interesting for us, will             
	determined later in >>acceptDroppingMorph:event:."

	| srcType dstType |

	"only want drops on lists (not, for example, on pluggable texts)"
	(destinationLM isKindOf: PluggableListMorph) ifFalse: [^ false].

	srcType := transferMorph dragTransferType.
	dstType := self dragTransferTypeForMorph: destinationLM.

	srcType == #getMethodItem:
		ifTrue: [
			^ (dstType == #getCategoryItem: or: [ dstType == #listElement2: ])].

	srcType == #getCategoryItem:
		ifTrue: [ ^  dstType == #listElement2: ].
	
	(srcType == #listElement2: and: [ dstType = #listElement: ]) 
		ifTrue: [ 
			(destinationLM potentialDropItem isKindOf: PluggableListMorph)
				ifTrue: [ ^ true ].
			self showGroups
				ifTrue: [ | receiver |
					receiver := destinationLM potentialDropItem originalObject.
					^ receiver isFillable ]
				ifFalse: [ ^ true ]]
		ifFalse:[ ^ false ].

	^ false