poupanca_adequada(Valor,Dependentes):-Valor/Dependentes < 5000.
verifica(Rend_Ano,Dep):-Rend_Ano > 15000 + (Dep * 4000).
renda_adequada(Renda,Dependentes):-Renda_Anual is Renda * 12, verifica(Renda_Anual,Dependentes).

consulta(Poupanca,Dependentes,Renda):- poupanca_adequada(Poupanca,Dependentes), write('Poupança');
    								   renda_adequada(Renda,Dependentes), write('Ações');
									   write('Poupança e Ações').    							 
