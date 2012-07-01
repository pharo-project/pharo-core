specs
defaultSpec2
<spec: #default>
	^ { #ComposableSpec.
			#add:. {{#model. #listModel.}.
											#layout:. {#FrameLayout.
												#fractions:. 	( 0@0 corner: 0.5@0.5 )}}.
			#add:. {{#model. #methodModel. #listModel.}.
											#layout:. {#FrameLayout.
												#fractions:. 	( 0.5@0 corner: 1@0.5 )}}.
			#add:. {{#model. #methodModel. #textModel}.
											#layout:. {#FrameLayout.
												#fractions:. 	( 0@0.5 corner: 1@1 )}}}.