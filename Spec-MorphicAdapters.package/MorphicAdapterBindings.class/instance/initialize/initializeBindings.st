initializeBindings
	"This implementation is stupid, but it exposes all the container which need to be bound"
	
	bindings
		at: #ButtonAdapter 			put: #MorphicButtonAdapter;
		at: #CheckBoxAdapter 		put: #MorphicCheckBoxAdapter;
		at: #ContainerAdapter 		put: #MorphicContainerAdapter;
		at: #DropListAdapter 			put: #MorphicDropListAdapter;
		at: #LabelAdapter 				put: #MorphicLabelAdapter;
		at: #ListAdapter 				put: #MorphicListAdapter;
		at: #IconListAdapter 			put: #MorphicIconListAdapter;
		at: #MultiColumnListAdapter 	put: #MorphicMultiColumnListAdapter;
		at: #NewListAdapter 			put: #MorphicNewListAdapter;
		at: #RadioButtonAdapter 		put: #MorphicRadioButtonAdapter;
		at: #SliderAdapter 				put: #MorphicSliderAdapter;
		at: #TabManagerAdapter 		put: #MorphicTabManagerAdapter;
		at: #TabAdapter 				put: #MorphicTabAdapter;
		at: #TextAdapter 				put: #MorphicTextAdapter;
		at: #TextInputFieldAdapter 	put: #MorphicTextInputFieldAdapter;
		at: #TreeAdapter 				put: #MorphicTreeAdapter;
		at: #WindowAdapter 			put: #MorphicWindowAdapter;
		at: #DialogWindowAdapter 	put: #MorphicDialogWindowAdapter;
		yourself