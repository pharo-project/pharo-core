*NautilusCommon-KeyMappingExtensions
detachKeymapCategory: aCategoryName targetting: anObject

	self targets reject: [:tgt | tgt target = anObject and: [ tgt category name = aCategoryName ]]