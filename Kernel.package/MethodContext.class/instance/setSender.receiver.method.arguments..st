private
setSender: s receiver: r method: m arguments: args 
	"Create the receiver's initial state."

	sender := s.
	receiver := r.
	method := m.
	closureOrNil := nil.
	pc := method initialPC.
	self stackp: method numTemps.
	1 to: args size do: [:i | self at: i put: (args at: i)]