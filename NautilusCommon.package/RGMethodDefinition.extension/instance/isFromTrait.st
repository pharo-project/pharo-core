*NautilusCommon
isFromTrait

	^ self methodClass hasTraitComposition and: [self methodClass traits anySatisfy: [:trait| (trait selectors includes: self selector) and: [ ((trait >> self selector) decompile sourceText) = self sourceCode]]]