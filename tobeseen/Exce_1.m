a=12;
b=3;
c=-8;
d=a*a+3*b;
disp("The value of d  is :"+num2str(d));

goof = a+d;
disp("The value of goof is: "+num2str(goof));
x1 = (-b +sqrt((b*b)-(4*a*c)))/(2*a);
x2 = (-b -sqrt((b*b)-(4*a*c)))/(2*a);
% create a variable sol with row vector x1 and x2
sol = [x1,x2];
% display the of sol
disp(sol);

% create a variable p as row vector of a , b and c

p =[a,b,c];

solchk= roots(p);

assert(sum(sol==solchk)==2, "Manual implementation is incorrect")
