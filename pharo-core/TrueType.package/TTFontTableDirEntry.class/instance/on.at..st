initialization
on: fd at: index

	fontData := fd.
	tag := fontData longAt: index bigEndian: true.
	checkSum := fontData longAt: index+4 bigEndian: true.
	offset := (fontData longAt: index+8 bigEndian: true) + 1.
	length := fontData longAt: index+12 bigEndian: true.