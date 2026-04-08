
/*

	Mas_veces:

	mas_veces( +ListaI , -Elem ).

	Es cierto si Elem unifica con el elemento que mas veces aparece en ListaI. En el
	caso de que haya dos elementos con el mismo numero de repeticiones Elem unificara 
	con uno de los dos.
	
	Principio de Inducccion:
	
	1) mas_veces( [ Elem ] , Elem ).
	2) mas_veces( ListaI , Elem ) :- msort( ListaI , Ordenada ),
								     comprime( Ordenada , Comprimida ),
								     mayor_n( Comprimida , Elem , _ ).

*/

	mas_veces( [ Elem ] , Elem ).
	mas_veces( ListaI , Elem ) :- msort( ListaI , Ordenada ),
								  comprime( Ordenada , Comprimida ),
								  mayor_n( Comprimida , Elem , _ ).
	
/*

	Mayor_n:

	mayor_n( +ListaI , -Elem , -N ).

	Es cierto si Elem unifica con el elemento que mas veces aparece en ListaI y N unifica con el numero de veces que aparece este.
	
	Principio de Inducccion:
	
	1) mayor_n( [ ( Elem , Num ) ] , Elem , Num ).
	2) mayor_n( [ ( Elem , NumElem ) | Resto ] , Elem , NumElem ) :- mayor_n( Resto , Mayor , NumMayor ),
																     NumElem > NumMayor.
	3) mayor_n( [ ( Elem , NumElem ) | Resto ] , Mayor , NumMayor ) :- mayor_n( Resto , Mayor , NumMayor ),
																	   NumElem =< NumMayor.

*/
	
	mayor_n( [ ( Elem , Num ) ] , Elem , Num ).
	mayor_n( [ ( Elem , NumElem ) | Resto ] , Elem , NumElem ) :- mayor_n( Resto , _ , NumMayor ),
																  NumElem > NumMayor.
	mayor_n( [ ( _ , NumElem ) | Resto ] , Mayor , NumMayor ) :- mayor_n( Resto , Mayor , NumMayor ),
																 NumElem =< NumMayor.
	
/*

	Comprime:

	comprime( +ListaI , -ListaR ).

	Es cierto si ListaR unifica con una lista formada por los elementos de ListaI enumerados en función de las veces que aparecen de forma ordenada.
	
	Principio de Inducccion:
	
	1) comprime( [  ] , [  ] ).
	2) comprime( [ Elem ] , [ ( Elem , 1 ) ] ).
	3) comprime( [ Cabeza1 , Cabeza2 | Resto ] , [ ( Cabeza1 , 1 ) | ListaR ] ) :- Cabeza1 \= Cabeza2,
																				comprime( [ Cabeza2 | Resto ]  , ListaR ).
	4) comprime( [ Cabeza1 , Cabeza2 | Resto ] , [ ( Caracter , Num2 + 1 ) | Lista ] ) :- Cabeza1 = Cabeza2,
																					  comprime( [ Cabeza2 | Resto ] , [ ( Caracter , Num ) | Lista ] ),
																					  Num2 = Num + 1.

*/

	comprime( [  ] , [  ] ).
	comprime( [ Elem ] , [ ( Elem , 1 ) ] ).
	comprime( [ Cabeza1 , Cabeza2 | Resto ] , [ ( Cabeza1 , 1 ) | ListaR ] ) :- Cabeza1 \= Cabeza2,
																				comprime( [ Cabeza2 | Resto ]  , ListaR ).
	comprime( [ Cabeza1 , Cabeza2 | Resto ] , [ ( Caracter , Num2 ) | Lista ] ) :- Cabeza1 = Cabeza2,
																				   comprime( [ Cabeza2 | Resto ] , [ ( Caracter , Num ) | Lista ] ),
																				   Num2 is Num + 1.