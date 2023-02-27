clauses:

start.
add:-write("enter first number"),read(A),
     write("enter second number"),read(B),
     C is A+B,
     write("The sum is"),
     write(C).


hcf(X,Y):- X =Y,write(Y).
hcf(X,Y):- X >Y,Z is X mod Y,C is 0,write(Y).
hcf(X,Y):- X < Y,Z is X mod Y,D is Y-Z,hcf(X,D).

result:-write("Enter marks of first subject:"),read(A),
    write("Enter marks of second subject:"),read(B),
    write("Enter marks of third subject:"),read(C),
    write("Enter marks of fourth subject:"),read(D),
    write("Enter marks of fifth subject:"),read(E),
  Percent is (A+B+C+D+E)/5,
  write("your percentage is:"),write(Percent),nl,grade(Percent,G).
grade(Percent,G):-Percent>=90,G="You secured A grade",write(G);
     Percent>=75,G="You secured A- grade",write(G);
     Percent>=65,G="You secured B+ grade",write(G);
     Percent>=55,G="You secured B grade",write(G);
     Percent>=45,G="You secured C grade",write(G);
     Percent>=35,G="You secured C- grade",write(G);
     G="sorry you are fail.",write(G).
