displaying
installOn: aDisplayContext foregroundColor: fgColor backgroundColor: bgColor

	foregroundColor := fgColor.
	fontArray do: [:s | s ifNotNil: [s installOn: aDisplayContext foregroundColor: fgColor backgroundColor: bgColor]].
