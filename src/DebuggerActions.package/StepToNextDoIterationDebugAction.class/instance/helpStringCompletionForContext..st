accessing
helpStringCompletionForContext: aContext
	| string |
	string := Character cr asString.
	string := string, Character lf asString, '#Method containing the do: ', aContext method methodClass asString, '>>', aContext method selector.
	^ string.