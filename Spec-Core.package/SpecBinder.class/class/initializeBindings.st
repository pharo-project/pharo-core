initialize
initializeBindings
	"self initializeBindings"
	bindings := IdentityDictionary new.
	bindings
		at: #ListSpec put: ListSpec;
		at: #MultiColumnListSpec put: MultiColumnListSpec;
		at: #IconListSpec put: IconListSpec;
		at:#model put: ModelSpec;
		at: #RawSpec put: RawSpec;
		at: #ComposableSpec put: ComposableSpec;
		at: #TextSpec put: TextSpec;
		at: #ButtonSpec put: ButtonSpec;
		at: #CheckboxSpec put: CheckboxSpec;
		at: #DropListSpec put: DropListSpec;
		at: #LabelSpec put: LabelSpec;
		at: #FrameLayoutSpec put: FrameLayoutSpec;
		at: #TextFieldSpec put: TextFieldSpec;
		at: #TreeSpec put: TreeSpec;
		at: #WindowSpec put: WindowSpec;
		at:#DialogWindowSpec put: DialogWindowSpec;
		at: #SliderSpec put: SliderSpec