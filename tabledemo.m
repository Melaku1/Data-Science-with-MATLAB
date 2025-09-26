X= readtable("D:\2018\Github_Push\Data_Science\Data_Science_With_matlab\DSwithMATLAB\matlabfilesuk\ch1Introduction\Firm.xlsx",ReadRowNames=true);
na =X(:,"BirthDate");
disp(na);

boo1 = X(:,"Wage")>2000;
boo1d = X.Wage>2000;
filterdateboo1 = X(boo1d,:);
disp(filterdateboo1);
disp(boo1);
%%
boo2 = X(:,"Wage")<3000;
boo2d = X.Wage<3000;
disp(boo2);
filterdata2=X(boo2d,:);
disp(filterdata2);

%%
boo3 = boo1 & boo2;
disp(boo3);
%%

bbo3data = boo1d & boo2d;
filterdata3 = X(bbo3data,:);
disp(filterdata3);

%%
 % boo4 = X.Gender == "F";
 boo4 = X{:,"Gender"} ==  "F";
disp(boo4);

filterdatag = X(boo4,:);
disp(filterdatag);
%%
boo5 = bbo3data & boo4;
filterdata5 = X(boo5, :);
disp(filterdata5);

%%
