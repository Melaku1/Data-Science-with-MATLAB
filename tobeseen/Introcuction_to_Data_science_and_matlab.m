disp('Hello World this is Matlab for Data Science!')
% Display a welcome message for data science
disp('Welcome to the Data Science session!');
% Display the current date
date0dirna =datetime('today', 'Format','dd-MM-yyyy')
% Display the current time
timeNow = datetime('now', 'Format', 'HH:mm:ss');
% Display a separator line for better readability
disp('-----------------------------------');
% Display a greeting for the session
disp('Let’s get started with our data analysis!');
% Display the current date and time in a formatted string
disp("Today's date is " + string(date0dirna) + " and the current time is " + string(timeNow));
disp("Current time is = " + string(timeNow));
disp("Date of today is ="+string (date0dirna))

% Prompt the user to enter their first name
firstname = input('Please enter your first name: ', 's');
% Prompt the user to enter their father name
lastname = input('Please enter your Father name: ', 's');
% Enter the age 
age = input('Enter Your Age: ');
% Display a personalized greeting

disp("Hello, " + string(userName) + " "+ string(lastname)+" Age = "+num2str(age)+ "! Let's begin our journey into data science.");

% write a programe that calculates the square root solution

a= input('Please Eneter the value of a: ');
b=input('please enter the value of b: ');
c=input('please enter the value of c: ');

d =b*b;
e = 4*a*c;

% Calculate the discriminant
f = d - e;

if f<0
    disp('No solution');
elseif f==0
    disp('Exactly one solution');
    solution = (-b)/(2*a);
    disp(solution)
else
    disp('Exactly it has two solution')
    solution1 = (((-b)+sqrt(f))/(2*a));
    solution2 = (((-b)-sqrt(f))/(2*a));
    disp('The solutions are:');
    disp('Solution 1: ' + string(solution1));
    disp('Solution 2: ' + string(solution2));
end
