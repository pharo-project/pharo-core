clipboardText
	| text len data |
	text := self primClipboardText.
	len := self strlen: text.
	data := ByteArray new: len.
	NativeBoost memCopy: text to: data size: len.
	^ ZnUTF8Encoder new decodeBytes: data.