closeAllUnchangedWindows
	(self  windowsSatisfying: [:w | w model canDiscardEdits])
		do: [:w | w delete]