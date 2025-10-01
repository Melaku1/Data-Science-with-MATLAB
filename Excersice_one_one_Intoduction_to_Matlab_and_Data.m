% create a row vector 
X= [1 3 5 7 9 11 13 15];

% CREATE a colum vector Y
Y=[24;21;18;15;-126];
%%
% CALCULATE THE SUM OF THE 4 TH ELEMENT OF Y AND THIRD element of X 
 Z= sum(X(3)+Y(4));
 disp(Z);

%%
% create a magic matrix and assign to ma
ma= magic(5);
%%
% claculate the sum of the the second column and assign to mio

mio =sum(ma(:,2));
%%
% perform matrix mutliplication of row 2 and column 3 and assign to z 
z = ma(2,:)*ma(:,3);
%%
% Display z
disp(z);
% Display the size of z

disp(size(z));
%%
Z = ma(:,3)*ma(2,:);

disp(Z);
disp(size(Z));
% the diffrence is in the above the esult will be 1 by 1 matrix and in this
% the result will be  5 by 5 matrix
%%
% EXTRACT column 2 and 5 from ma
ma(:,[2 5])
%%
% extract last column of matrix and display
disp(ma(:,end));
%%
% extract element at the intersection of row 2,3,1 and column 1 and 4 in
% the variable T and display the value of T
T=ma([2 3 1],[1 4]);
disp(T);
%%
% square the element of column 3

ma(:,3) .^2

%%
% calculate the sum of the square of column 2 3 and 4

sum(ma(:,2).^2) + sum(ma(:,3).^2) + sum(ma(:,4).^2);
% or
sum(ma(:,2:4).^2)
%%
% calculate the sum of squares of element row 3 and 1
sum(ma([3, 1], :).^2)
% even if we do little mistake in the above
% the result display as single row vector with
% five element becaue matlab by default adds
% column wise so we will change slightly like this
sum((ma([3 1],:).^2),2)
%%
% create a variable named mvec that applies the vec operator to matrix ma

mvec = ma(:);

%%
% display the odd position of mvec until the end
mvec(1:2:end,:)
%%
MAvecflip =flip(mvec)
%%
M= [mvec MAvecflip]
%%
% dispplay the sum of matrix M coulmn wise
disp(sum(M(:,:)))
%%
% display sum of matrix M row wise

disp(sum(M(:,:),2))
%%
% sum all value of matrix M

sum(sum(M(:,:)))
%% character and string 
%

