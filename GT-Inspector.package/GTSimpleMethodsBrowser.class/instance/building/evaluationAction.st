evaluationAction
	^ GLMGenericAction new
		action: [ :listPresentation :obj | 
					| result |
					result := obj perform: listPresentation selection selector.
					(listPresentation pane port: #evaluatedObject) value: result ];
		shortcut: $o;
		title: 'Do it and open';
		yourself