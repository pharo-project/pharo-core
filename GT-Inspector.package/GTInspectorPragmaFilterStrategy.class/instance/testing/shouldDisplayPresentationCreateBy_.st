shouldDisplayPresentationCreateBy: aMethod

	^ (self inspectorPragmasFrom: aMethod) includesAny: selectedPragmaKeys