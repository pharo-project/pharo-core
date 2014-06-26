slots: slotCollection

	vars := Dictionary new.
	slotCollection do: [ :slot |
		vars at: slot name put:
			(OCSlotVariable new
				slot: slot;
				scope: self;
				yourself)].
