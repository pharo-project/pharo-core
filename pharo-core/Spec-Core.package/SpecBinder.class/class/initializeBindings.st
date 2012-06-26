initialize
initializeBindings
	"self initializeBindings"
	bindings := IdentityDictionary new.
	bindings
		at: #ListSpec put: ListSpec;
		at: #MultiColumnListSpec put: MultiColumnListSpec;
		at: #IconListSpec put: IconListSpec;
		at: #RawSpec put: RawSpec;
		at: #ComposableSpec put: ComposableSpec;
		at: #TextSpec put: TextSpec;
		at: #ButtonSpec put: ButtonSpec;
		at: #CheckboxSpec put: CheckboxSpec;
		at: #DropListSpec put: DropListSpec;
		at: #LabelSpec put: LabelSpec;
		at: #TextFieldSpec put: TextFieldSpec;
		at: #TreeSpec put: TreeSpec.