private
setSender: s receiver: r method: m closure: c startpc: startpc
	"Create the receiver's initial state."

	sender := s.
	receiver := r.
	method := m.
	closureOrNil := c.
	pc := startpc.
	stackp := 0