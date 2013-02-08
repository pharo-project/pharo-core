Events in Morphic originate in a Hand, pass to a target morph, and are then dispatched by an EventHandler.  EventHandlers support redirection of mouse and keyboard activity by specifying and independent recipient object and message selector for each of the possible events.  In addition each eventHandler can supply an optional value parameter for distinguishing between, eg, events from a number of otherwise identical source morphs.

The basic protocol of an event handler is to receive a message of the form
	mouseDown: event in: targetMorph
and redirect this as one of
	mouseDownRecipient perform: mouseDownSelector0
	mouseDownRecipient perform: mouseDownSelector1 with: event
	mouseDownRecipient perform: mouseDownSelector2 with: event with: targetMorph
	mouseDownRecipient perform: mouseDownSelector3 with: event with: targetMorph with: valueParameter
depending on the arity of the mouseDownSelector.
