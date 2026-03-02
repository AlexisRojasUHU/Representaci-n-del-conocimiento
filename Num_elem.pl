
/*

	Elementos de una lista.
	
	num_elem( Lista , Resultado )
	
	Es cierto si Resultado unifica con el número de elementos de Lista.
	
	Principio de inducción:
	
	1) num_elem( [] , 0 ).
	2) num_elem( [ Cabeza | Resto ] , R1 ) :- num_elem( Resto , R ), R1 is 1 + R.
	
*/

	num_elem( [] , 0 ).
	num_elem( [ Cabeza | Resto ] , R1 ) :- num_elem( Resto , R ), R1 is 1 + R.