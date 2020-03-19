starter(greensalad).
starter(melon).
starter(tomatosalad).
starter(rabbitpate).

maindish(rocksalmonmayonnaisecapers).
maindish(roastbeefgirollemushroomsauce).
maindish(pasta).
maindish(courgette).
maindish(cheesebake).

desert(cheese).
desert(yoghurt).
desert(parisbrestpastry).


menu(Status,X,Y,Z):-
	((Status = hungry) ->
		starter(X),
		maindish(Y),
		desert(Z));
	((Status = not_so_hungry) ->
		((starter(X),
		maindish(Y));
		(maindish(Y),
		desert(Z))));
	((Status = on_diet) ->
	 	starter(X)).

