initialization
isAbsolute: fileName
	"Return true if the given fileName is absolute. The rules are:

If a path begins with a colon, it is relative.
Otherwise,
  If it contains a colon anywhere, it is absolute and the first component is the volume name.
  Otherwise,
    It is relative."

	^fileName first ~= $:
		and: [ fileName includes: $: ]