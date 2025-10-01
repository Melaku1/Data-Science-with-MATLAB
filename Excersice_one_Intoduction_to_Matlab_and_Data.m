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

 x1 = -b + sqrt((b*b)-(4*a*c))/(2*a);
 x2 = -b - sqrt((b*b)-(4*a*c))/(2*a);
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

assert(sum(sol, solchk)==2, 'Manual computation does not match the roots function output.');
%% 
%