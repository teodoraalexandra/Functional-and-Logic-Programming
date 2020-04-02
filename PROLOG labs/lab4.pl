%Generate the list of all arrangements of K elements of a given list.
%Ex. [2, 3, 4] K=2 -> [[2,3], [3,2], [2,4], [4,2], [3,4], [4,3]] 
%(not necessary in this order)

arr([H|T], K, R):-

