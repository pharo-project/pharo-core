specs
defaultSpec
	
	^ { #Panel.
			#useProportionalLayout.
			
			#add:. {{#model.	#commentInputField.}	.
							#layout:. {#FrameLayout.
										#fractions:offsets:. (0@0 corner: 1@1). (0@0 corner: 0@(-25))}}.
			
			#add:. {{#model.	#okCancelToolBar.}	.
							#layout:. {#FrameLayout.
										#fractions:offsets:. (0@1 corner: 1@1). (0@(-25) corner: 0@0)}}.
			
			
			#hSpaceFill.
			#vSpaceFill }