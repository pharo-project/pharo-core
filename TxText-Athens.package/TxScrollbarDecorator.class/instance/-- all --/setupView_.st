setupView: viewMorph
	"view morph has changed.. rewire the events if necessary"
	

	viewMorph layoutView announcer weak on: TxLayoutViewChanged send: #viewChanged: to: self