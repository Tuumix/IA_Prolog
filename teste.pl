nota(joao,5.0).
nota(maria,6.0).
nota(joana,8.0).
nota(mariana,9.0).
nota(cleuza,8.5).
nota(jose,6.5).
nota(joaquim,4.5).

resultado(N,erro):-N<0;N>10.
resultado(N,reprovado):-N<6.
resultado(_,aprovado).

consulta:- write('Digite o nome: '),read(Nome),
		       nota(Nome,N),
		       resultado(N,Texto),
		       write('Nota: '),write(N),nl,
		       write('Situação: '), write(Texto).




dist_planeta_sol(mercurio,36).
dist_planeta_sol(venus,67).


dist_planetas(P1,P2,D):-  dist_planeta_sol(P1,D1),
                          dist_planeta_sol(P2,D2),
			  D is abs(D1-D2).
