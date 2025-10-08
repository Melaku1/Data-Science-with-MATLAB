%%
disp("last modified date");
todaydate = datetime("today","Format","dd-MM-yyyy");
disp(todaydate);
%%
% load inttrade.at
load inttrade.mat
%%
a=12
%%
% add the value at the intersection of row 3 and column 2 of the table
% inntrade with the variable a so that the output is a table of size 1 by 1
btable= inttrade(3,2)+a;
%%
% add the value at the intersection of row 3 and column 2 of the table
% inttrade
inttrade{3,2}+a;
%%
% extract odd numbered row of the table inttrade and add the value of the
% variable a raised to the third power

inttrade(1:2:end,:)+a^3
%%
% output as numeric double matrix (assign the variable name ddouble)
% display the first three row
ddouble = inttrade{1:2:end,:}+a^3;
disp(head(ddouble,3));

%%

X = readtable("Firm.xlsx","Range","A1:H15",ReadRowNames=true);
%%
% extract the record p0213 of the table x
X(X.Code=="P0213",:)
%%
% extract the records of po213 and po219 and column 2,3 and 4 of table x
X(X.Code=="P0213" | X.Code=="P0219",2:4)





