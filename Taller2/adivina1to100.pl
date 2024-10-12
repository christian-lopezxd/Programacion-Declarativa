% Regla para generar un número aleatorio entre 1 y 100.
number_to_guess(X) :- random(N), is(X, floor(*(N, 101))).
% Predicado principal para jugar.
play :-
number_to_guess(NumberToGuess),
guess_number(NumberToGuess, 0).
% Predicado para adivinar el número.
guess_number(NumberToGuess, Attempts) :-
write("Guess a number between 1 and 100: "),
read(Guess),
NewAttempts is Attempts + 1,
validate_number(NumberToGuess, Guess, NewAttempts).

% Predicado para validar el número ingresado.
validate_number(NumberToGuess, Guess, Attempts) :-
    =:=(NumberToGuess, Guess),
    write("You guessed it in "), write(Attempts), writeln(" attempts!"),
    nl,
    !.
    validate_number(NumberToGuess, Guess, Attempts) :-
    >(NumberToGuess, Guess),
    write("The number is greater than "), writeln(Guess), nl,
    guess_number(NumberToGuess, Attempts).
    validate_number(NumberToGuess, Guess, Attempts) :-
    <(NumberToGuess, Guess),
    write("The number is less than "), writeln(Guess), nl,
    guess_number(NumberToGuess, Attempts).