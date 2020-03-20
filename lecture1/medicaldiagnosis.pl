% variable domains
%	disease: indication = symbol
%	Patient: name = string

% predicates written
%	hypothesis(string,disease)
%	symptom(name,indication)
%	read(char)
%	diganose

diagnose:-
	write('What is the patient\'s name? '),
	read(Patient),
	write('Which disease do you want to diagnose? (type one of the following)'), nl,
	write('measles/german_measles/flu/common_cold/mumps/chicken_pox/measles/covidflu: '),
	read(Disease),
	hypothesis(Patient,Disease),
	write('Disease present.'),nl.

diagnose:-
	write('Disease absent.'),nl.

symptom(Patient,fever):-
	write('fever (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,rash):-
	write('rash (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,headache):-
	write('headache (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,runny_nose):-
	write('runny_nose (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,conjunctivitis):-
	write('conjunctivitis (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,cough):-
	write('cough (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,body_ache):-
	write('body_ache (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,chills):-
	write('chills (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,sore_throat):-
	write('sore_throat (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,sneezing):-
	write('sneezing (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,swollen_glands):-
	write('swollen_glands (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,tiredness):-
	write('tiredness (y/n) ?'),
	response(Reply),
	Reply='y'.

symptom(Patient,breathingdiff):-
	write('difficulty in breathing (y/n) ?'),
	response(Reply),
	Reply='y'.


hypothesis(Patient,measles):-
	symptom(Patient,fever),
	symptom(Patient,cough),
	symptom(Patient,conjunctivitis),
	symptom(Patient,runny_nose),
	symptom(Patient,rash).

hypothesis(Patient,german_measles):-
	symptom(Patient,fever),
	symptom(Patient,headache),
	symptom(Patient,runny_nose),
	symptom(Patient,rash).

hypothesis(Patient,flu):-
	symptom(Patient,fever),
	symptom(Patient,headache),
	symptom(Patient,body_ache),
	symptom(Patient,conjunctivitis),
	symptom(Patient,chills),
	symptom(Patient,sore_throat),
	symptom(Patient,runny_nose),
	symptom(Patient,cough).

hypothesis(Patient,common_cold):-
	symptom(Patient,headache),
	symptom(Patient,sneezing),
	symptom(Patient,sore_throat),
	symptom(Patient,runny_nose),
	symptom(Patient,chills).

hypothesis(Patient,mumps):-
	symptom(Patient,fever),
	symptom(Patient,swollen_glands).

hypothesis(Patient,chicken_pox):-
	symptom(Patient,fever),
	symptom(Patient,chills),
	symptom(Patient,body_ache),
	symptom(Patient,rash).

hypothesis(Patient,covidflu):-
	symptom(Patient,fever),
	symptom(Patient,cough),
	symptom(Patient,tiredness),
	symptom(Patient,breathingdiff).

response(Reply):-
	read(Reply),
	write('Your response is: '),
	write(Reply),nl.
