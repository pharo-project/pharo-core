example
example
	"self example"

	((self itemsList: (Object allSubclasses sort: [:a :b | a name <= b name])) itemsHeaderName: 'Inst Var Name') open