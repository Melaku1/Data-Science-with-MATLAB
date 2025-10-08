disp("last modified date");
dateoftoday = datetime("today","Format","dd-MMM-yyyy");
disp(dateoftoday);
%%
a=12;
load inttrade
%%
btable= inttrade(3,2)+a;
disp(btable);
%%
bdouble= inttrade{3,2}+a;
disp(bdouble);
%%
bdoublechk = table2array(btable);
assert(isequal(bdouble,bdoublechk),"Two values are diffrent");
% % Display the result of the equality check
% disp("Are the two values equal?");
% disp(is_equal);
%%
dtable= inttrade(1:2:end,:)+a^3
disp(head(dtable,3))

%%
% output as numeric matrix
ddouble =inttrade{1:2:end,:}+a^3;
disp(head(ddouble,3))
%%
X= readtable("Firm.xlsx",Range="A1:H15", ReadRowNames=true)
%%
disp(X("P0213",:));
%%
X(["P0213" "P0219"],2:4)
%%
uno = X(:,["Surname" "Wage"]);
cellarray = {"Surname", "Wage"};
stringarray = ["Surname", "Wage"];
%%
test= X(:,[1,end-1,end])
disp(head(test,8))
%%
head(X(:,[1,end-1,end]))
%%
X{5:2:13,"Wage"}

