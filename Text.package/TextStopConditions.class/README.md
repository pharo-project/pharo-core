A TextStopConditions is a private helper class for text composition (See class CharacterScanner and subclasses).
It maps some characters controling the text layout (like carriage return, line feeds, space and tabulation) to some selector representing the action to be performed by the CharacterScanner.
By default, a TextStopConditions does not map any action to control character; instances must be properly initialized by sending #at:put: messages.

For example, inter-word spacing can be adjusted so as to obtain "justified" paragraphs. See implementors of #paddedSpace, #cr, #space, #columnBreak for example of special character actions.

A TextStopConditions also store two selectors for mapping the actions to be taken when:
- end of run is encountered;
- text overflows horizontal composition bounds.
These actions are by default #endOfRun and #crossedX (see implementors of these messages), but can enventually be changed using #endOfRun: and #crossedX:.

In a text (see class Text), the "runs" are used to store text style attributes, so an "end of run" event probably means some action in the textcomposer should be taken to change the font.

TextStopConditions current implementation can only map 256 character codes (from 1 to 256). It is the composer responsibility to encode the character before sending #at:. Presumably, the composer will use the character codePoint + 1 (see implementors of #codePoint).
If this is not sufficient, then this class could be changed to use a Dictionary or a LargeTable

Historically, the EndOfRun and CrossedX were two TextConstant of value 257 and 258, which did occupy corresponding slots in the stops array. Since these are valid character codePoint, this usage has been deprecated. However, because any error in text composition would have catastrophic consequences (unresponsive user interface), backward compatibility with obsolete historical code is still maintained internally which is why the stops array has a sze of 258.

Instance Variables
	crossedX:		<Symbol | nil>
	endOfRun:		<Symbol | nil>
	stops:		<Array of: Symbol | nil>

crossedX
	- selector to perform when the composed text overflows X composition bound

endOfRun
	- selector to perform at end of run

stops
	- an array mapping character code (codePoint + 1) to special actions, or nil if character is to be rendered normally
