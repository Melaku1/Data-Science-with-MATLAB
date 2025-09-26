
% create a new row vector 
x=[1,3,5,7,9,11,13,15];

% cerate a column vector
y = [24;21;18;15;-126]

% calculate the sum of fouth element of y and the third of x .
z = x(3)+y(4);
disp(z);

% matrix

a= [1,2,3;4,5,6;7,8,9];
disp(a);

% Magic Matrix
MA = magic(5);
disp(MA);

% Calculate the sum of elements of second column and assign to mio

mio =sum(MA(:,2));
disp("Mio = "+mio);
% perform matrix multiplication of row 2 and column 3 of matrix MA and
% assign to Z variable
%Z= MA(2,:) 
%z=MA(:,3)

Z= MA(:,3)*MA(2,:);
% Display the result of the matrix multiplication
Z

% display size of Z
disp(size(Z));

% display column 2 and 5 of of the matrix ma
column2 = MA(:,2);
column5 = MA(:,5);
disp(column2);
disp(column5);

% extract the last column of matrix MA 
lastcolumn=MA(:,end);
disp(lastcolumn);

% Extract intersection of rows 2,5,1 and column 1 and 4 and assign to T
T= [MA(2,1),MA(2,4),MA(5,1),MA(5,4),MA(1,1),MA(1,4)];

% SQUARE THE ELEMENTS OF COLUMN 3
power(MA(:,3),2)

% calculate the sum of the squares of elements of column 2 to 4
% gives row vector because we add each column so we have 3 column
sumofsquare = sum(power(MA(:,2:4),2),1)

% if we want row wise which means to get 5 by 1 

squaresum = sum(power(MA(:,2:4),2),2)

% CALCULATE THE SUM OF SQUARES OF THE ELEMENTS OF 3 and 1 
     sum(power(MA(:,[3,1]),2),1)

% create a variable named MAvec that applies the vec operator to the matrix
% MA.
MAvec = MA(:)

% IDPALY THE ODD POSTION OF MAVEC AND DISPLAY
