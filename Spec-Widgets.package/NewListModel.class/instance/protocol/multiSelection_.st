multiSelection: aBoolean
	<api: #boolean getter: #multiSelection registration: #whenMultiSelectionChanged:>
	"Make the list seelction become multiple if aBoolean is true.
	Otherwise set the selection as single"
	
	isMultipleSelection contents: aBoolean.
	