drag and drop
wantsDroppedMorph: transferMorph event: anEvent inMorph: destinationLM 
	"We are only interested in TransferMorphs as wrappers for             
	informations. If their content is really interesting for us, will             
	determined later in >>acceptDroppingMorph:event:."

	| srcType dstType |

	"only want drops on lists (not, for example, on pluggable texts)"
	(destinationLM isKindOf: PluggableListMorph) ifFalse: [^ false].

	srcType := transferMorph dragTransferType.
	dstType := destinationLM getListSelector.

	(srcType == #messageList
		and: [dstType == #messageCategoryList or: [dstType == #classList]])
		ifTrue: [^true].
	(srcType == #classList
		and: [dstType == #systemCategoryList])
		ifTrue: [^true].
"			[
			srcLS == #messageList ifTrue: [^ dstLS == #messageList | (dstLS == #messageCategoryList) | (dstLS == #classList)].
			srcLS == #classList ifTrue: [^ dstLS == #classList | (dstLS == #systemCategoryList)]].
"
	^ false