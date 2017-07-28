preco(ALCOOL, GASOLINA, LITROS, X) :- (ALCOOL >= 0.7 * GASOLINA), X is GASOLINA * LITROS.
preco(ALCOOL, GASOLINA, LITROS, X) :- (ALCOOL < 0.7 * GASOLINA), X is ALCOOL * LITROS.

:- initialization main.

main:-
  read_line_to_codes(user_input, A2),
  string_to_atom(A2,A1),
  atom_number(A1,A),
  read_line_to_codes(user_input, G2),
  string_to_atom(G2,G1),
  atom_number(G1,G),
  read_line_to_codes(user_input, L2),
  string_to_atom(L2,L1),
  atom_number(L1,L),
  preco(A, G, L, X),
write(X).
