running
setUp
	stack := Stack new.
	stack push: 'b'; push: $a.
	expected := Stack new.
	expected push: 'b'; push: 'a'.