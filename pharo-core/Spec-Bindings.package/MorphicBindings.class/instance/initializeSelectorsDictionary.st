initialization
initializeSelectorsDictionary

	^ IdentityDictionary new
		at: #addSplitters	 			put: #yourself;
		at: #add:						put: #ensureLayoutAndAddMorph:;
		at: #layout:						put: #layoutFrame:;
		at: #fractions:offsets:			put: #fractions:offsets:;
		at: #useProportionalLayout	put: #changeProportionalLayout;
		at: #vSpaceFill					put: {#vResizing:. #spaceFill};
		at: #hSpaceFill					put: {#hResizing:. #spaceFill};
		at: #vShrinkWrap				put: {#vResizing:. #shrinkWrap};
		at: #hShrinkWrap				put: {#hResizing:. #shrinkWrap};
		at: #vRigid						put: {#vResizing:. #rigid};
		at: #hRigid						put: {#hResizing:. #rigid};
		yourself