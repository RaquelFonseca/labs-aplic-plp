contaLetra(A, [], 0).
contaLetra(A, [A|T], X):- contaLetra(A, T, Y), X is 1 + Y.
contaLetra(A, [H|T], X):- contaLetra(A, T, X).  


:- initialization main.

main:-
	read_line_to_codes(user_input, LETRA),
	string_to_atom(LETRA,L),

	read_line_to_codes(user_input, FRASE),
	string_chars(FRASE, LISTA),
	contaLetra(L, LISTA, N),
	write(N), nl.



