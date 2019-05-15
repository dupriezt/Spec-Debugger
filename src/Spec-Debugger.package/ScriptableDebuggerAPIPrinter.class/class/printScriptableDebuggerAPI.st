printing
printScriptableDebuggerAPI
	"In latex format for the paper. You have to escape characters like \ and # yourself if they appear in comments."
| protocolToMethodList rws |
protocolToMethodList := Dictionary new.
ScriptableDebugger methodDictionary valuesDo: [ :cmpMethod |
	|prot|
	prot := cmpMethod protocol.
	(protocolToMethodList includesKey: prot) ifFalse: [ protocolToMethodList at: prot put: LinkedList new ].
	(protocolToMethodList at: prot) add: cmpMethod.
].
rws := ReadWriteStream with: LinkedList new.
protocolToMethodList associationsDo: [ :assoc |
	|prot cmpMethodList|
	prot := assoc key. cmpMethodList := assoc value.
	rws nextPutAll: '\subsubsection{', prot, '}', Character cr asString.
	cmpMethodList do: [ :cmpMethod |
		|fullSelector comment|
		fullSelector := cmpMethod selector.
		(cmpMethod ast arguments size >= 1) ifTrue: [ 
			fullSelector := ''.
			(cmpMethod selector substrings: ':') with: (cmpMethod ast arguments) do: [:selecPart :rbArg|
				fullSelector := fullSelector, selecPart, ': ', rbArg name, ' '.
			].	
		].
		comment := ''.
		(cmpMethod comment) ifNotNil: [ comment := cmpMethod comment, Character cr asString ].
		rws nextPutAll: '\begin{lstlisting}[style=mystyle]', Character cr asString, fullSelector, '\end{lstlisting}', Character cr asString, comment, Character cr asString.
	].
].
^ rws contents inject: '' into: [ :acc :char | acc , char asString].
	