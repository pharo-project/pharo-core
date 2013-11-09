initializeBindings
	"This implementation is stupid, but it exposes all the container which need to be bound"
	
	bindings
		at: #ButtonAdapter 			put: #ButtonAdapter;
		at: #CheckBoxAdapter 		put: #CheckBoxAdapter;
		at: #ContainerAdapter 		put: #ContainerAdapter;
		at: #DropListAdapter 			put: #DropListAdapter;
		at: #LabelAdapter 				put: #LabelAdapter;
		at: #ListAdapter 				put: #ListAdapter;
		at: #IconListAdapter 			put: #IconListAdapter;
		at: #MultiColumnListAdapter 	put: #MultiColumnListAdapter;
		at: #NewListAdapter 			put: #NewListAdapter;
		at: #RadioButtonAdapter 		put: #RadioButtonAdapter;
		at: #SliderAdapter 				put: #SliderAdapter;
		at: #TabManagerAdapter 		put: #TabManagerAdapter;
		at: #TabAdapter 				put: #TabAdapter;
		at: #TextAdapter 				put: #TextAdapter;
		at: #TextInputFieldAdapter 	put: #TextInputFieldAdapter;
		at: #TreeAdapter 				put: #TreeAdapter;
		at: #TreeColumnAdapter		put: #TreeColumnAdapter;
		at: #TreeNodeAdapter			put: #TreeNodeAdapter;
		at: #WindowAdapter 			put: #WindowAdapter;
		at: #DialogWindowAdapter 	put: #DialogWindowAdapter;
		yourself