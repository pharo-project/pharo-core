spotterImplementorsFor: aStep
	<spotterOrder: 40>
	^ aStep listProcessor
		title: 'Implementors';
		filter: GTFilterSubstring item: [ :filter :context | methods do: filter ];
		keyBinding: $m meta