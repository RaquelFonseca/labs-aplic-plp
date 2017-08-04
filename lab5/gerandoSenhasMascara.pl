getElement(Ind, [H|T], C) :- Ind== 0 -> C = H; Z is Ind-1, getElement(Z, T, C).



:- initialization main.

main:-

  read_line_to_codes(user_input, A2),
  string_to_atom(A2,A1),
  atom_number(A1,A),
  
  read_line_to_codes(user_input, B2),
  string_to_atom(B2,B1),
  atom_number(B1,B),
   
  read_line_to_codes(user_input, C2),
  string_to_atom(C2,C1),
  atom_number(C1,C),
  
  read_line_to_codes(user_input, D2),
  string_to_atom(D2,D1),
  atom_number(D1,D),
  
  
  
  read_line_to_codes(user_input,P),
  string_to_atom(P,P1),
  string_chars(P1,L1),

  read_line_to_codes(user_input,X),
  string_to_atom(X,P2),
  string_chars(P2,L2),
 
  read_line_to_codes(user_input,Z),
  string_to_atom(Z,P3),
  string_chars(P3,L3),

  read_line_to_codes(user_input,W),
  string_to_atom(W,P4),
  string_chars(P4,L4),
		
  getElement(A,L1,R1),
  write(R1),
  getElement(B,L2,R2),
  write(R2),
  getElement(C,L3,R3),
  write(R3),
  getElement(D,L4,R4),  
  write(R4).
