% Basic Excersice in chapter 1 
% Introduction using matlab in data science
% display current time and date

disp("last modified date");
date_time = datetime("today","Format","dd-MMM-yyyy");
disp(date_time);
%%
% type tuna in the command window if it runs sucessfully you will 
% see the version its correct
% load inttrade
load inttrade.mat
%%
inttrade(1:3,:)
% the above command displays row 1,2 and 3 from inttrade

%%
a=13;
b=3;
c=-8;
d= (a^2)+(3*b);
disp(d);
%%
goofy = a+d;
%% 
% calaculate the quadratic equation

x1 = (-b+sqrt((b*b)-(4*a*c)))/(2*a);
x2 = (-b-sqrt((b*b)-(4*a*c)))/(2*a);

% x1 = (-b + y) / (2 * a);
% x2 = (-b - y) / (2 * a);
%% 
% create column vector x1 and x2 and assign to sol variable

sol = [x1;x2];
disp(sol);
%% 
% display x1 and x2 as a row vector

disp([x1 x2]);
%% 
% create variable a , b, c as row vector and assign to p

p=[a,b,c];

solchk = roots(p);
% solchk =(solchk)';
disp(solchk)
%% 
% using assert check the mannual compuation sol and solchk are equal or not 
% if not display error message

assert(isequal(round(sol,6), round(solchk,6), "Manual computation does not match the roots function output"));
%% 
% create a row vector x
x=[1,3,5,7,9,11,13,15];
% create a column vector y
y=[24;21;18;15;-126];
%%
% calculate the sum of the fourth element of vector y and the third element
% of vector x. assign the resu;t to a variable name z.
z=y(4)+x(3);
% display the result of z
disp(z);
%%
% create a magic matrix with 5  size and assign to the varibale ma
ma=magic(5);
%%
% calculate the sum of the element of the second column and assign to
% variable mio

mio = sum(ma(:,2));
%%
% perform matrix multiplication between row 2 and column 3 of the matrix ma
% and assign the result to a vairable name z
z=ma(2,:)*ma(:,3);
disp(z);
%%
% display the size of z

disp(size(z))
%%
% display matrix multiplication b/n column 3 and row 2 of the matrix MA and 
% assign the result to a variable named  Z

Z= ma(:,3)*ma(2,:);
disp(Z);
disp(size(Z));
%%
% extract column 2 and 5 of the matrix ma and display in the command window
ma(:,[2 5])
%%
% extract the last column of ma and display in the command window
lc= ma(:,end)
%%
% square the elemnts of column 3
ma(:,3).^2
%%
% calculate the sum of the squares of the elements of column 2 to 4
sum(ma(:,2:4).^2)
%%
% calculate the sum of the squares of the elements of row 3 and 1. the
% result should be a column vector of length 2, with the first element
% equal to the sum of the square of the elements of row and the second
% element equal to the sum of the squares of the element row 1
sum(ma([3 1],:).^2,2)
%% create a variable named mavec that applies the the vec operator to the matrix ma
mavec = ma(:);
% vec changes all the 5 by 5 matrix to a asigle coulumn vector
%%
% cextract all odd postion of mvec
mavec(1:2:end,:)
%%
mavecflip = flip(mavec)
%%
% create a matrix m that contains mvec as first and mavecflip as a second
% column
M = [mavec,maveclip];
%%
% calculate the sum of each column of the matrix M and display the result
% in the command window
sum(M(:,:))
%%
% calculate the sum of each row of matrix M

sum(M(:,:),2)
%%
% calculate the sum of all elemnts of the matrix M
sum(sum(M(:,:)))
%%
% compute the sum of the squares of all elements of matrix M
sum(sum(M(:,:).^2))
%%
% calculate the sine of all elements of the matrix M and assign the result
% to a matrix named MAs , displaying the output
MAs = sin(M);
disp(MAs);
%%
% plot th two coulmns of matrix MA using lines
plot(ma(:,1),ma(:,2),LineWidth=2)
% add a legned "first column" and "second column"
xlabel("First column");
ylabel("second column");
%place the legend using the'best' location option
legend("First column","First column","Location","best")

%%
% clear matrix MA from memory
% extract the first 5 rows of the matrix M into a new matrix named A
A = M(1:5,:);
disp(A);
%% 
% create a logical matrix L with value >10 from matrix A
 L= A>10;
 disp(class(L));
 %% Character and String
 % assign this is a beautiful day to the variable ch.
 ch ='This is a beautiful day';
 size(ch);
 %%
 % extract the elements at postion 6:9
 ch(6:9)
 %%
 % show the Ascii code 
 double('This')
 %%
 






