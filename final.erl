-export([myTan/1, isSame/2, parity/1, mealType/1, myMult/2, mySum/1, mySeries/3]).
-import(math,[sin/1, sqrt/1, pow/2]).

% Ryker Swensen
% Meal calculator related functions. Interested in working on food
% calculator, or my fitness pal like app. 

% Function myTan that takes one argument
myTan(N) -> sin(N)/sqrt(1-pow(sin(N),2)).
isSame(N,M) -> N=:=M.

%Function parity that takes an argument and returns an atom even if the argument is an even 
%number, an atom odd if the argument is an odd number. Zero is even. 
parity(N) when (N rem 2 =:=0) -> even;
parity(N) when (N rem 2 =/=0) -> odd.

% Function mealType that takes an integer argument and returns its equivalent meal as an atom. 
mealType(N) when (N == 1) -> breakfast;
mealType(N) when (N == 2) -> lunch;
mealType(N) when (N == 3) -> dinner;
mealType(N) when (N == 4) -> appetizer;
mealType(N) when (N == 5) -> dessert;
mealType(N) when (N > 5) or (N =< 0) -> no_match.

% Function myMult that implements the recursive math formula 
myMult(M,N) when (N<0) -> (-1)*myMult(M, N*(-1));
myMult(M,N) when (M==0) or (N==0) -> 0;
myMult(M,N) when (N>0) -> M + myMult(M, N-1).

% 
mySum(0) -> 0;
mySum(N) -> N + mySum(N-1).

%Function mySeries that takes 3 arguments: the value of the first term of the geometric 
%sequence, the common ratio (multiplier), and the term number for which the function is to 
%compute and return a value. 
mySeries(X,_,1) -> X;
mySeries(X,Y,Z) -> Y * mySeries(X, Y, Z-1).