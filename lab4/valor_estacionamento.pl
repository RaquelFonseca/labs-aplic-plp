valor_estacionamento(moto, 5).
valor_estacionamento(carro, 10).
valor_estacionamento(largo, 30).


:- initialization main.
main:-
	read_line_to_codes(user_input, A),
	string_to_atom(A,B),
	valor_estacionamento(B, C),
	write(C), nl.
	

