% create a string array

Stringarray =["A6","A9","A12","A15","A18","A21","A24"];
% or
A= "A"+(6:3:24);
%%
%[text] A cell array is a data type with indexed data containers called cells, where each cell can contain any type of data.
a1=(11:20);
a2=5;
a3=10;
a4=(12:-2:2);
a12="This is valdo";
a13 = rand(5,6);
a14 = (11:3:32)';
a15=eye(3) %[output:42a7a91c]

CA ={a1,a2,a3,a4;a12,a13,a14,a15};
%%
%[text] display element 2, 4 of the array
disp(CA(2,4)); %[output:69635d20]
% display the content of 2,4 
disp(CA{2,4}); %[output:3523e69e]
%%
load nci60.mat
% extract sub table 
PT = nci60(:,["x15938" "x9634" "x21830" "y"]);
disp(PT) %[output:6d75033a]
%%
% create the following table row vector uno
uno = [0,1,2];
% create column vector vn with the first 3 natural no
vn=[0,1,2];
% or
vn =(0:2)';
%%
% cerate a 2 by 3 matrix with the first 6 natural no
mn =[0,1,2;3,4,5] %[output:072fe568]
%%

% create evenly spaced vector from interval [1 15]
nd =1:2:15;
%%
% create 2 by 1 string array ot
ot=["Jhone","Do"];
% create a 2 by 1 column vector with first name jhone and second name Do
vt = ["Jhone";"Do"];
%%
% create a random 3 by 2 matrix named A with see vale 22
rng(22)
A= rand(3,2);
%%
% extraction or selection practice

A(3,2) %[output:57ed3782]
A(3,:) %[output:8abf5c50]
A(2:3,1:2) %[output:4d47cd51]
A([1 3] ,:) %[output:15ead2c2]
A(end,2) %[output:25e689ee]
A(end:-1:1,2) % reverse of last row %[output:60823445]
%%
% character
ch= 'Melaku';
disp(ch); %[output:3f68f457]
disp(double(ch)); % display ascii code for each number %[output:1b4a8485]
disp(double(ch)+1); % display each ascii + 1 %[output:0c18eb7a]
disp(char('Melaku'+1));% display char next to each position %[output:4ae0db42]
%%
% string represent in double qoute
Name = "Melaku";
disp(Name); %[output:9076814d]
%disp(Name)+1;
disp("Melaku"+1); %[output:99cfeb04]
%%
% cell array
txt= "Bonjorino";
b= rand(3,2) %[output:91371493]
c =[11 22 33]' %[output:6813b0e4]
cm ={1,2,3;txt,b,c} %[output:47864ea9]
%%
% acess the cell and the value inside
cm(2,3);
cm{2,2};

%%
% structure data type st with six elemet

st = struct;
st.a=1;
st.b =2;
st.c=3;
st.d ="Bongorino";
st.e = rand(3,2);
st.f =[11;22;33];
disp(st); %[output:712aea8d]
%%
% extract data from struct
% access the third element
st.c %[output:3bbc0299]
% extract the second column of fifith element
st.e(:,2) %[output:44f0c1d6]


%%
%[text] # 
% reading Tables, the first argument is the filename,
Y= readtable("Firm.xlsx",ReadRowNames=false) %[output:7754b813]
X= readtable("Firm.xlsx", Sheet='data',Range='A1:J108',ReadRowNames=true) %[output:60880c03]
%%
Firm=readtable("Firm.xlsx", Sheet='data',Range='A1:J108',ReadRowNames=false) %[output:89a27192]
%%
% Scatter plot for Seniority Vs Wage
% Prepare the data for the scatter plot
hold on; % Hold the current plot %[output:16321ec8]
scatter(X.Seniority,X.Wage) %[output:16321ec8]
xlabel("Senority") %[output:16321ec8]
ylabel("Wage"); %[output:16321ec8]
title("Scatter Plot of Seniority vs Wage"); %[output:16321ec8]
grid on; %[output:16321ec8]
%%
% extract the first 5 values of wage from the firm table imported as row
% names =0 put in the table named Firm

Firm= Y.Wage(1:5,:);
%%
% or we can make it 
Y(1:5,7) %[output:91d25ac6]
% or
Y{1:5,"Wage"} %[output:915cf368]
%%
% extract the first 5 values from both wage and seniority
Y{1:5,["Wage" "Seniority"]} %[output:97b320e4]
% or
Y(1:5,[7 10]) %[output:59705f8f]
%%
% extract subject 
X("P0219",:) %[output:81c711ca]
% extract two row values
X(["P0219" "P0476"],:) %[output:9dacf685]
X({'P0219' 'P0476'},:) %[output:113017d4]
%%
% EXTRACT FROM firm all women
Womendata = X(X.Gender=="F",:) %[output:83c0a5fb]
%%
% select all girl with education level B
X(X.Education=="B" & X.Gender=="F" ,:) %[output:3335506d]
%%
% select female with education level b or male with wage grater than 4000
X((X.Gender=="F" & X.Education=="B") |(X.Gender=="M" & X.Wage>4000),:) %[output:844ed5a3]

%%
% select all income greater than or equal to 3000 and less than 3500
X(X.Wage>=3000 & X.Wage<3500,:) %[output:61aca4df]
%%
% Excersice 1.9
% display record where surname start with "CAS"
na= "CAS";
endwithna="LA";
Y(startsWith(X.Surname,na),:) %[output:172822b6]
Y(endsWith(X.Name,endwithna),:) %[output:2a81af54]
%%
% Display the name start with R and end with O
startr="R";
endwithO="O";
Y(startsWith(X.Name,startr)& endsWith(X.Name,endwithO),:) %[output:71b09372]
%%
surs ="R";
sure ="O" | "A";
Y(startsWith(X.Name,surs) & endsWith(X.Name,sure),:) %[output:38803119]
%%
srs ="P";
sre = ["O", "A"];
len =7;
Y(startsWith(Y.Surname,srs) & endsWith(Y.Surname,sre) & strlength(Y.Surname)<=len,:) %[output:42568a82]
%%


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":33.4}
%---
%[output:42a7a91c]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"a15","rows":3,"type":"double","value":[["1","0","0"],["0","1","0"],["0","0","1"]]}}
%---
%[output:69635d20]
%   data: {"dataType":"text","outputData":{"text":"    {3×3 double}\n\n","truncated":false}}
%---
%[output:3523e69e]
%   data: {"dataType":"text","outputData":{"text":"     1     0     0\n     0     1     0\n     0     0     1\n\n","truncated":false}}
%---
%[output:6d75033a]
%   data: {"dataType":"text","outputData":{"text":"    <strong>x15938<\/strong>    <strong>x9634<\/strong>    <strong>x21830<\/strong>      <strong>y<\/strong>  \n    <strong>______<\/strong>    <strong>_____<\/strong>    <strong>______<\/strong>    <strong>_____<\/strong>\n\n     8.29      7.95     5.42      6.18\n     3.14      7.14     3.35      3.44\n     3.06      7.25        3     -0.58\n     3.64       6.9     5.86     -0.09\n     8.24      9.72     6.03      6.26\n      3.1      3.65     3.38      0.35\n     3.09      6.21     3.51     -1.53\n     3.11      6.39     3.62     -1.53\n     3.11      7.35     3.44        -1\n     3.15      5.95     5.18     -1.77\n     3.09      8.17     4.11      2.01\n     6.94      5.64      3.5     -3.57\n     5.05      7.83     3.77      5.26\n     3.74         8     3.72       3.8\n     5.29      8.25     4.32      5.01\n     6.16      8.33     4.01       5.9\n      7.6      7.15     3.66     -2.88\n     6.88      7.32     4.36      5.85\n     3.34      6.08     3.55     -2.48\n     3.48      5.05     3.66     -2.75\n     3.64      7.14      3.5      1.72\n     3.71      5.97     3.62     -3.23\n     3.34      6.57     3.57      0.63\n      3.2       5.4     3.52      0.43\n     3.18      5.81     3.37     -1.99\n     3.18      7.12      3.7     -2.21\n     3.45      5.95     3.56     -2.68\n     3.88      6.69     3.64     -1.64\n     3.17      5.53     3.46      -2.2\n     3.36      5.85     3.48     -2.22\n     3.17      5.95     3.39     -2.71\n     3.46      6.76     3.66     -2.89\n     3.57      5.92     3.55      -2.7\n     3.15      4.28     3.39     -2.79\n     6.25      9.45     3.88      5.78\n     4.61      9.51     4.49      5.76\n     4.45      7.53     4.73      5.51\n     3.35      6.92     3.55      2.24\n      5.8      7.83     3.71     -1.31\n     5.37     10.98     3.63      7.94\n     3.83      8.18     3.71         5\n     3.18      7.11     3.66     -1.33\n     3.48     10.44     3.84      3.19\n     4.22      9.34     4.67      5.82\n      3.8      8.83      3.6      5.52\n      4.4      10.6     5.08      6.59\n     3.75      7.33     3.45       4.8\n     4.22       8.3     3.95      2.75\n     7.22       7.6     3.65      6.55\n     3.33      8.73     4.33      1.84\n     3.66      8.35     3.65     -1.69\n     4.39      6.36     4.21       2.2\n     4.18      8.66     4.58      2.52\n     4.12      7.24     4.14      4.18\n      5.4      7.52     3.74      2.96\n      3.3       7.4     3.66     -0.59\n     4.87       6.3     4.58      6.79\n     3.79      7.25     5.94      1.23\n     5.77      6.96     3.67      4.32\n\n","truncated":false}}
%---
%[output:072fe568]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"mn","rows":2,"type":"double","value":[["0","1","2"],["3","4","5"]]}}
%---
%[output:57ed3782]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"0.3389"}}
%---
%[output:8abf5c50]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":1,"type":"double","value":[["0.4205","0.3389"]]}}
%---
%[output:4d47cd51]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":2,"type":"double","value":[["0.4817","0.1712"],["0.4205","0.3389"]]}}
%---
%[output:15ead2c2]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":2,"type":"double","value":[["0.2085","0.8592"],["0.4205","0.3389"]]}}
%---
%[output:25e689ee]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"0.3389"}}
%---
%[output:60823445]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"ans","rows":3,"type":"double","value":[["0.3389"],["0.1712"],["0.8592"]]}}
%---
%[output:3f68f457]
%   data: {"dataType":"text","outputData":{"text":"Melaku\n","truncated":false}}
%---
%[output:1b4a8485]
%   data: {"dataType":"text","outputData":{"text":"    77   101   108    97   107   117\n\n","truncated":false}}
%---
%[output:0c18eb7a]
%   data: {"dataType":"text","outputData":{"text":"    78   102   109    98   108   118\n\n","truncated":false}}
%---
%[output:4ae0db42]
%   data: {"dataType":"text","outputData":{"text":"Nfmblv\n","truncated":false}}
%---
%[output:9076814d]
%   data: {"dataType":"text","outputData":{"text":"Melaku\n","truncated":false}}
%---
%[output:99cfeb04]
%   data: {"dataType":"text","outputData":{"text":"Melaku1\n","truncated":false}}
%---
%[output:91371493]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"b","rows":3,"type":"double","value":[["0.2705","0.8120"],["0.6910","0.0105"],["0.2204","0.5612"]]}}
%---
%[output:6813b0e4]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"c","rows":3,"type":"double","value":[["11"],["22"],["33"]]}}
%---
%[output:47864ea9]
%   data: {"dataType":"tabular","outputData":{"columns":3,"header":"2×3 cell array","name":"cm","rows":2,"type":"cell","value":[["1","2","3"],["\"Bonjorino\"","[0.2705,0.8120;0.6910,0.0105;0.2204,0.5612]","[11;22;33]"]]}}
%---
%[output:712aea8d]
%   data: {"dataType":"text","outputData":{"text":"    a: 1\n    b: 2\n    c: 3\n    d: \"Bongorino\"\n    e: [3×2 double]\n    f: [3×1 double]\n\n","truncated":false}}
%---
%[output:3bbc0299]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"3"}}
%---
%[output:44f0c1d6]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"ans","rows":3,"type":"double","value":[["0.0061"],["0.7720"],["0.9578"]]}}
%---
%[output:7754b813]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"107×10 table","name":"Y","rows":107,"type":"table","value":[["'P0211'","'BASILICO'","'TIZIANA'","'F'","16-Jun-1991","'A'","1877","27","10","11"],["'P0212'","'BONINO'","'PAOLO'","'M'","01-Jul-1993","'B'","2375","35","12","8"],["'P0213'","'GRI'","'ALBERTO'","'M'","19-Oct-1987","'C'","2450","39","16","11"],["'P0214'","'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'P0215'","'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'P0216'","'MONTANARI'","'GIACOMO'","'M'","24-Sep-1974","'A'","2314","29","10","23"],["'P0217'","'MAROVINO'","'ELISABETTA'","'F'","14-Oct-1966","'A'","1893","29","6","12"],["'P0218'","'MONTALDO'","'DIEGO'","'M'","06-Mar-1966","'A'","2443","16","6","28"],["'P0219'","'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'P0220'","'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'P0221'","'ROSSI'","'FABIO'","'M'","11-Feb-1988","'B'","2593","15","4","13"],["'P0222'","'RIVA'","'GIANLUCA'","'M'","08-Sep-1985","'B'","3370","26","12","16"],["'P0223'","'TRIPIEDI'","'FEDERICO'","'M'","18-Jan-1995","'B'","2141","27","10","6"],["'P0224'","'VELARDI'","'ALFREDO'","'M'","09-Feb-1961","'B'","4354","21","10","40"]]}}
%---
%[output:60880c03]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"107×9 table","name":"X","rowNames":["P0211","P0212","P0213","P0214","P0215","P0216","P0217","P0218","P0219","P0220","P0221","P0222","P0223","P0224"],"rows":107,"type":"table","value":[["'BASILICO'","'TIZIANA'","'F'","16-Jun-1991","'A'","1877","27","10","11"],["'BONINO'","'PAOLO'","'M'","01-Jul-1993","'B'","2375","35","12","8"],["'GRI'","'ALBERTO'","'M'","19-Oct-1987","'C'","2450","39","16","11"],["'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'MONTANARI'","'GIACOMO'","'M'","24-Sep-1974","'A'","2314","29","10","23"],["'MAROVINO'","'ELISABETTA'","'F'","14-Oct-1966","'A'","1893","29","6","12"],["'MONTALDO'","'DIEGO'","'M'","06-Mar-1966","'A'","2443","16","6","28"],["'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'ROSSI'","'FABIO'","'M'","11-Feb-1988","'B'","2593","15","4","13"],["'RIVA'","'GIANLUCA'","'M'","08-Sep-1985","'B'","3370","26","12","16"],["'TRIPIEDI'","'FEDERICO'","'M'","18-Jan-1995","'B'","2141","27","10","6"],["'VELARDI'","'ALFREDO'","'M'","09-Feb-1961","'B'","4354","21","10","40"]]}}
%---
%[output:89a27192]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"107×10 table","name":"Firm","rows":107,"type":"table","value":[["'P0211'","'BASILICO'","'TIZIANA'","'F'","16-Jun-1991","'A'","1877","27","10","11"],["'P0212'","'BONINO'","'PAOLO'","'M'","01-Jul-1993","'B'","2375","35","12","8"],["'P0213'","'GRI'","'ALBERTO'","'M'","19-Oct-1987","'C'","2450","39","16","11"],["'P0214'","'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'P0215'","'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'P0216'","'MONTANARI'","'GIACOMO'","'M'","24-Sep-1974","'A'","2314","29","10","23"],["'P0217'","'MAROVINO'","'ELISABETTA'","'F'","14-Oct-1966","'A'","1893","29","6","12"],["'P0218'","'MONTALDO'","'DIEGO'","'M'","06-Mar-1966","'A'","2443","16","6","28"],["'P0219'","'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'P0220'","'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'P0221'","'ROSSI'","'FABIO'","'M'","11-Feb-1988","'B'","2593","15","4","13"],["'P0222'","'RIVA'","'GIANLUCA'","'M'","08-Sep-1985","'B'","3370","26","12","16"],["'P0223'","'TRIPIEDI'","'FEDERICO'","'M'","18-Jan-1995","'B'","2141","27","10","6"],["'P0224'","'VELARDI'","'ALFREDO'","'M'","09-Feb-1961","'B'","4354","21","10","40"]]}}
%---
%[output:16321ec8]
%   data: {"dataType":"image","outputData":{"dataUri":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUUAAADDCAYAAAAV6gMsAAAAAXNSR0IArs4c6QAAIABJREFUeF7tfQ2wVdWV5u5pbSVjdyuRFhgIpBWIVe2gRdsSTCRth46VaWJihUbpGSkl+ioTlalBeYidqEmUX5Ogph2MSDmpEpQuSUlPVVKVOFKmSdQWpO2UCZgE\/\/gJiJRSAmlqnPrOy3dZd719ztnn7HPu3ee+faoo3r1n733WXnud766118\/+vffff\/99E6\/IgciByIHIgYQDvxdBMUpC5EDkQOTACQ5EUIzSEDkQORA5IDgQQTGKQ+RA5EDkwFACxZ07d5prrrnG7N69O5n25MmTzZo1a8zw4cMrF4THHnssGXP27NmtsfH8Rx55xNx2221m2LBhlT5z2bJlZvXq1dYxZ86caZYuXZo8kzxAw7Vr15oJEyY403Hw4EFz5513mttvv92bZxhr3rx5Zvv27cnz+\/r6TH9\/v5WWTq2bD29shKeNZ5MN50WoqaFcj0cffdRMnTo1eZL8XsoR7v30pz81c+bMMfr7mkjsyrA9rSnqF4scrgMYCVBLlixpgWLdApQFipgrBfeNN95IfhiKgiL5N2LEiEp+SDS9kldS+ju5bp0ARZtsdOVtVw89cuSIWbRokdm0aZOxyS2ajx49uu2HlHPJ+kELYW4+NPQ0KHIBCQ4QAmoqaS9kWWZ2ExS1gBKMKdCYU0igmMf7Tq5b2fUu0i9UUMQcbCAHrfbWW29tTZFaZBqIFuFFE9oOCVCUoMEFl9\/Jxbb9OkqzgYtKwBkzZkzr11begwn9zW9+s00GCAZaE5K0SNMF39M8luYNB0371dZm0Qc\/+EErKGaZqARWOYEs7UDzEP1Iszab03icNS\/buulxtUkn+TN+\/PjWiy4thTRNMc98Jz3Tp09PyN68eXOimX\/hC18wX\/ziF5PvHnjgAfPQQw8lmpiUjYsvvths2LBh0PZBlmWRdk\/LgKZba3oalDgueYLtFmqPH\/\/4x80zzzzTopP83r9\/f0t71Nq\/XgNJD2hZuXJlAsTYQpEynQbE3QDRngZFyeg04bC9sPqltQEE2kCQ7r\/\/frN8+fJBgp8GiuPGjUv2ZPRl02Y1AOu9wDRQdNEU0+ZEPr311luD6EwDxTQegn78EMyYMaNtLzEPFF3WzcXEdtlztW0t5PEG66BfYswJ\/LniiitaP0BpoPjVr37VfOUrXzF6WyJLo7QBUtqPH\/fP8+QH9\/WPAn5AYU3hwn7vzTffbKZMmZLsTwPIILsE0O985zvWPW3KSZZcyB\/NtHXKsyjqAsyeBkWb9sIXlc4QCrfUHjTY8DN\/2WzahYv5jGfzV9hmkuC7iRMntgAkbzM7b0+Rwpkm+BByCXTabCVg5O0psp\/koQZmAImrGemybrax9Hf8LH8Qud5pWwsEhTzePPnkky3NU2o8LrIh56e1achImiNQz09rjwQtyo2UtzSA0bSgDx0pcK7ByfbCCy8kmuHWrVuTOUNmrrvuuhZ4kl7yls8nj6RcyB8TzJ1WjJSxqveyi4JnT4MimZFlCrq+qBgry8x2AUWCjP4lJ51aq7KZzHKBs0BRvgT6RaUWqB1Ouh2ehb3ILFBM82Da9p+K8BrPTls3vpD0YmuhJ9DbNOm0OWIMvPiuvCFApJmLHC\/tx0BvB3CuWVsUGgTvvffeRFNL25bJ+1El3+S67Nq1q23MrHvsr7V2PlfTh\/ZaXl599dW2\/Uu5lnmmf1Gwc20\/JECRzJAvKhguzZssVd1mKmkTsApQlL\/Aes\/FtqBp5rNumwaK+qXRJloRUJT7TLaXDZp5UVBMW7dVq1aZr3\/9663QHj1f\/VJKoHEFxTze+IKi1IbkFkzWD6FcH+7Nab6nyWrWuHp\/FLQxdItADO3x3XffTbaJMBZ+UGn12PiP7QFsE2jPttZMs0BRmtiugFZFu54FxbwYLArTE0880fbLqJmqHR\/YZ3ExkaSmUyQ0Jo3uOkAxRE3RZd0kKGa97CFrihIcvvzlLycmc942BWSAcwJIPf300639PlsMrNS0s7TGLKeS3hekzOzYsaO158w1kOZzGiimaYquWm0VoJc3Rs+CohQ6yXC9p8RffNu+h\/Ym8tdTjyFNJKmVZHn2bJvRek\/R1XzOixnz3VOUpmAWOFexp+i6bvwxy9o\/KwOKRfcUi5jPep20VufiWNAAJvvoPT0ApZZBW9JCVlC93jLS+4U2\/pfZU8SWEuXdheY8YPO537OgmLYnRWa5eMg0SGlGyz0Pvb+HvrikpxnPRAiHq\/e5LlBM857qLYG0vSKtlaR5gjGefGldzec07y\/G084jvT+b5TBD\/zzz2ZU3NgCyjS9\/MCk\/tlAl1\/0zvQUkM5SyvL1Fwqk0OEvw5jhZa5QVSYH1gZUmQTB6n30gvERf2wurFz0rxk4KOhaSwqvNbi2QFHy54GkCJbWNTpjPDO3Ji8XD3OULkWXi5PFQmn5lNCINsHpd8FlvB5TRFF15UwQU02RD8qSI+Zj2bIxnA0YXftusH75uUk7SYgtB\/8KFC80NN9yQgB7BWvbF+mAvFGE+es9cA6MLzSXgwKlLLZqinqD+FZQvmi3lLuu+fvnyTEcnLsRGkQNd4ECvZ4jYgLbqtMo6lq1yUMwrIAC1G6ApY5u2bNnSKl6Qdx99ccHhQaGaNm1aWxGGOhgVx4wcqIoDac6LOoqUVEVzmXGytlWKaMZlnu3Tp3JQBCPSqsLYQAwCsmDBArN48WLDlDkJcvI+JgoVHRkkNHMAouvWrWuBqg8zYt\/IgU5wIGtfsBPP7+QzbMAYMiCCN5WDIkAK8X\/ImcQlTWf+QkLLY5kiCZRMB0u7jxQ5qWVyX0kDZScXPT4rciByoLc4UDkoYh9h\/fr1LfMYIImNVWy8ItyBWqHM4wXQIWEfoJh1H6CotUKpSercYGSQ4N\/IkSOTf\/GKHIgcCJ8DJ510ksG\/bl2Vg6JtItwHRHpWp0ARYHjLLbeYZ5991sydO9dcffXV3eJx4eceP37cvPfee+YDH\/hAV4WjMOG\/6xDpL8u5avo1mf+g\/eSTT0620roFjB0BRWiPyKlkzmonzGfGUa1YsSKJ+m+SpogthX379iU0n3rqqdW8KR0cJdLfQWZbHtVk\/oP2AwcOmLFjx3ZN9isFxTRvMM3jz3zmM0m+ZJojpUpHC0ExLwC6u+Jrf\/rRo0fNnj17zKhRo7omGD58ifT7cM+\/b5P5HwLtlYIiltO2pyidI3khN3n3XUNyIij6v1xlRwhBsMvSjn6Rfh\/u+fUNgfeVgyKBkeXMbelLnQjejqDoJ5w+vUMQ7Eh\/My2NEGSnFlD0Eciq+kZQrIqTxccJQbCLU32iR6Tfh3t+fUPgfQRFvzWspXcIguEzsUi\/D\/f8+zaZ\/yHQHkHRXwYrHyEEwfCZVKTfh3v+fZvM\/xBoj6DoL4OVjxCCYPhMKtLvwz3\/vk3mfwi0R1D0l8HKRwhBMHwmFen34Z5\/3ybzPwTaIyj6y2DlI4QgGD6TivT7cM+\/b5P5HwLtERT9ZbDyEUIQDJ9JRfp9uOfft8n8D4H2CIr+Mlj5CCEIhs+kIv0+3PPv22T+h0B7BEV\/Gax8hBAEw2dSkX4f7vn3bTL\/Q6A9gqK\/DFY+QgiC4TOpSL8P9\/z7Npn\/IdAeQdFfBisfIQTB8JlUpN+He\/59m8z\/EGiPoOgvg5WPEIJg+Ewq0u\/DvfJ9Xzt41Kx7fo\/58SuHzK\/3H07qEV514UjT\/6kPlx+0wz1DkJ0Iih1edJfHhSAYLnSmtYn0+3CvXF8A4pfWvWw+ds7pZv70UUnpuX8\/5Qyz8aW3zbrn95r7rzw3uRf6FYLsRFAMUEpCEAwftkT67dyTmtzrbx9NGlWhyREQv33VueZDw08dVPoM9z\/zD9vMi3\/\/UZ9l7UjfEGQngmJHlrrYQ0IQjGIUt7eO9BtjA0ANgmzjq8mhP8fG\/zb+6zY+61tn3xBkJ4JinStccuwQBKMk6Um3oUZ\/HgBK09YGgL6a3MxvbzObvnRBa8nS+K\/b+axxXX1DkJ0IinWtrse4IQiGB\/k9BYq\/ec+0nBc2k1cCHhwaNgCU\/dIA0EeTO\/\/rP2kzjSMo+khvDec++5FTXe9YZLY6XhYdqVdAHY6Kv3345QToLj77dANww9+4sHcHEHz0uT2Ge3n4XoIbAXDsGae2aXJpAFhWkwMoPvnfL0hoStPUCdZSoyy6rp1oH4LsRE2xEytd8BkhCEZBktua9wL9L\/ziddO3ce+gsBaayst+sKsFjHCW8NLABgCEV\/jgN\/6yjUc2ACwList+8GvzoeHDEqdNGiiCjtcOHgk+PCcE2Ymg6PP219Q3BMHwmVov0P\/gUzvNw1sPt2lgkicAR2ho0BIlKGpTFn2G\/8\/\/m5i31OTwnQZAX00Oz4C2iLAbzX9qrFKb9FnfOvuGIDsRFOtc4ZJjhyAYJUlP1VR8xut0X\/AfoHXtJR9uAzxNBwBQm8balEUffAdTm+BpA0BfTY7Ah2fIOMUX3jxqoEk2ARDTtNxOr38ExU5z3OF5ERQdmFRjE\/D\/z5c+b\/5l0YWZ524D7HDJ+D9tyhIA\/\/mXh1qanAbAqjQ5mvZP\/\/yAOX78uNl\/pJo4yBpZPWjoEGQ\/gmInV9zxWSEIhiOp1ma9QD9AEdrVn\/7JaamsAAAC4HRQtDRlCYBXXTgqCaCGJofvMDYugGXVmlyT+R8C7REUfd7+mvqGIBg+U+sF+gGKt\/2XCZnmM50o3Msjz6QpKwEQecn4DJMbF7zZVWS06LVqMv9DoL1WUDxy5IhZtGiRmTZtmpk9e3Zr7R577DFz6623Jp8nT55s1qxZY4YPH+50n2Nu2rQpad\/X12f6+\/sHvcMxJMcH1vz6hiDYZWYgg7ChweHq\/9R4q8eWjhaAGtpKcJOZKnUDoG2eTeU\/5hIC7bWCIsFvyZIlLVAEWC1btqwFhGizZcsWs3TpUjNs2DCTdx99E2Ht7zdpoIv7ERTLwEI1fUIQ7KIzsRVUmHLfrmQYeI1ZUAHtAIIIs8H3NINZnaZODdB1Tk3kP+cWAu21geLOnTvN\/fffb9555x1z2WWXJaBoA7GDBw+aBQsWmMWLF5sxY8YM0izlfTBu4cKFZvny5WbChAkJHwF+69ata4EqmRtB0fUVqr5dCIJdZFZpBRUQvD115bbWUAjgBiAytCZUj27T+C\/XKgTaawFFgN9dd91lZs2aZR5++OGW+QyAmzdvXqLlTZ06NeGFBMoZM2Zk3h83blyblon+AF8NlFFTLAIJ1bcNQbCLzIoZJgA9XY8Q3wEEuRdY1z5gEXrz2jaN\/0MCFKGlbd682dx0001tmp\/U+qjpgSEwicePH28AitQabfcBilorTBuTmuL8+fPN5ZdfbkaOPJF1kCdU3b4Pod67d68566yzki2Fpl1No3\/WmpfNqlkTEpN46vjTkjg\/8P+3f\/DHZuNLh5J\/3\/r8hMRLvLHvvOCXo2n816C4f\/9+M3bs2MxwqDoXoXJNESB15513mttvvz15oaWjpRugCObNnTvXXH311XXysdKxjx07ZiAYI0aMMKecckqlY3disKbRP\/ORN8yoPzzJ3PHJM83oPzrJaPp3v3M8SflDmwevCP\/HtWn8lzIJ2vFv0qRJvQOK0PqmT5+emMd6D7Eb5vOKFSvMlClTGqUpgm\/79u1LaD711IHwjSZdTaMf+4YL\/mqMmXXBiNaWjub\/hm37zeNbD5gN884Nfimaxn\/JUNB+4MCB3tEUCXrbt28fJDgIndHmNBpFR8vgd6zJe0KYTdPoR0rfnL8YlVtQARVxQq8y00T+D4k9RU7S5m3OC7nJux9DcoJXVBoHikjXgwc6r6CCznMOdSWa9qM05EERDIjB29mvU5OFuomaCkARcYg3rH850RZtBRVwH46WqCnW+1MQguxX7mipl2Xuo8c4RXdeVd0yBMEuMicWcWBIjq2ggm8VmyL0+LZtGv+HlKbou7g+\/SMo+nDPr28TX8peqUfYRE09gqLf++bcO4KiM6sqb9hEUHStR2g7pKqOog4+i9JE\/nO+IdAezWcf6aupbwiC4TO1ptKfV49QH1IFHlV1TGlRfmeBc1P5H4qWG0GxqDR2oH2ThToUwfZZJhv\/dX60Ht\/3mNIi9OaB88rPjjdn\/8ejZtSoUY2Lcw1B9iMoFpHGDrUNQTB8ptqL9LscQerSxoev1EyRjihPEJRjEpw3\/t3ICIolmR1BsSTj6uzWi6BSJ7+qHtvGf9eT9lzblaXZBXjRBmmi1186IWqKJRgdQbEE0+ruEkGxbg5nj2\/jv+2UPtsodYOiy\/ign+2aliYaguxHUOzu+2d9egiC4cOWXqTfdkqfbV8Rpm2dAd4u4BxB0Ud6jYmg6Me\/Wnr3IqjUwqiaBrXxX5\/SZ3t0JwK8XcD5V785bPq++1ICzlFTLC4kqaAoizvMnDkzqWx97733JnUP5XkrxR\/ZmR4xTrEzfLY9pQpQ72Y8YBr9MsDbpiXitL66q3G7gvP2X+4xd3z23AiKJV4DKygCUG6++Wazdu1as3Xr1tYZKijwgMrZV155ZfDAGEHRTRrqAB9fUMwLOeF5KW4zLN4qjX56dpEOiL9RhRuXPLaURxUUf6p7jzxw\/vS9z5vVnxtppkzqXqFW99m0t\/SVnbLPlf0GgaKubKMPlsLn9evXDzqBrwpiqhwjgmI+N+sCHx\/BDiEeMAsUeWAV6MQFYOTZLXWDNVdUZt\/0f+rDydc8UAua5OPXnmtOPvZ2DMnJfwWsLQaBoi4Em3faXsnn1t4tgmI2i+sEHx9QdA05oYbmIkhFteHQg7cJgmknCPrw34WfdbYJgfbCmiLqGe7evXvQ6Xl1MqrM2BEUs7lWB\/jwiT6C7RJygue4tiujDUv6f\/OeaR1mJc1lamiSyy48LSPLRfv48L\/os6puHwLthfYUn3zyyeQQ+0cffbR1Gl\/VTKlqvAiK2ZwkqORpUa7gI5\/mI9guISeuoFhWGyb9OOJ0wcZfm4+dc7r58SuHEm9uXq5zGX5VJfNV\/ChVTUvR8Xxkp+iz0to7eZ\/ZefTo0YnzRZ60VxUhVY8TQXEwRyUAyvOLZZUX\/dKXKazqI9guIScEu7x4QBfNzdYG9L\/wi9fN158+ZFb\/t\/OSI041WKflOkdQ9HuTfWTH78knesc4xao4WeE4dQiGNiPxkqO8PrQgAIN2EvClL1OC34d+15CT1w4eMTBhszRdV4DS7UD\/g0\/tTE5TxA8GLhtYa0B1BesKRcU6lA\/\/66Ytb\/wQaE91tNgOn9ITCtmMjpriidWymZH0ohJYEGP34t9\/tG2JAVC4bPtnWcKdJ9h5JnteyAnjAUED5gFgl15YOCAGAqmPmoPf+Mu893DQ\/qQtIyQNrCWgdiJ4O3cyDTw4rKqtFxfeuLRJ3VOcM2eOWbJkSVs8ogSaiRMnBh2zGEHxxPLbTES8zDCheViTTesB+FStKbo4PmCu4tnarAe9ACfQTEDMqhZDkzcrdtCm3QEU\/3zp8+ZfFl1opKOFWw6SLrk324ngbZeXOu9HyWWMbrUJgfZU7zP2D\/v7+wfxRobowPGyZcsWs2rVqm7xMPW5ERRPsMZmRtIclOCDdgAZCT5FcnmlBvjr\/YfNSSedNAjYXMpeQWOVY2Em8PxKMHLZLyxqipNjBEVsKdzzo9dbmihoAt9wAWihneIZ\/L\/ubBbXlywEYHGlVbcLgfbcOEVNtDyCdMeOHQYhOhs3bizLg9r6RVA8wVqbR5egiFaMd9MhJ1l7ZDYTGGPp0\/A2vvR2a89Sjp+28C5gh76u+4WuprjUJvFi3vG9l833Xxk49lTeyzP9axPoAgOHACwFyG1rGgLtuXGKenJaU0R2SwTFsiJg71e1YNicBFqLsgFg2h6ZNoHlZ\/TRlZ+LOm1cAK9I6I7WMmX2h027o6Pljh8eaG0v6JWi1gjNms6YaqWg\/GhVy095Sor3DIH20nuKkydPNosWLTJpZnZxdlTbI2qKJ\/iZZkZKLUoDIIHMpilpE1hqd+ynKz+jDfqVcXzYJKNI6A6AKy37wzY2HS3o97cPD5wFbUunA2+KbC9UK+Hpo4UALGXnGgLtheIUAYRr1qwxw4cPT8xmAA8\/SyYQkPCd7MM20DYRBF7mPnOzN23alPTv6+uz7n1GUGwXS5sZSQCTBQ3QS+4paidFmtNGxgymVX4GDdgvLOr4sL1gZfcLXV7WNEcL+mqt00WrdXlmlW1CAJay8wmB9srjFGWFHQR55+VOF70PMMYFJ5AuXmED5pDDhtIEpw7BkABoC1+Bl9n20msa05w2MpzHFtKCcaDd4dlZ5maRsJYy+4UuLytBEZrgn\/7JaaldQolL1ATWIT8ufKuiTQi0Vw6KErTApJ07d5qFCxea5cuXmzFjxiQm97Rp01qhPihAsWDBArN48eLc+xiPYzGrBiC8bt26QbnYUVMcLKJ5Hl0Xoc5y2lADtIEiAUSGAennSZMd99IcQOyXBvRZmq7LHOlomXz2qMoA3OW5VbUJAVjKziUE2q2gKAvM2iZnM4nTmCA1QdZjhJY3derUpIvU9mbMmJHEPqbdHzduXGK2S5Ndgq5MP4ygWFYss\/u5OG1slZ+pAV514SjnGMS0oGyZfVMF0KdpWlPu25XpaAklLjFqitXKuhUUZSUcxCLu2rUrASoA0DXXXGNWrlyZWxCCoCTzpaVWKAEMz0NFb4AitUbbfYCi1grTxuTz58+fby6\/\/HIzcuRAulYTLvxa7t2715x11llm2LBhpUje\/c5xs2Hb\/qSQgQyFmT99VKnx2Alxe9AIZ10wom2c0Yt\/Yp64\/jwzdfxpyXP\/9Vd7zeJPn5PQD1oAILiPvhLIEMsI+mZdcGZiWqMtnBerZk2w7j2iL5wfP715IIC7jov8\/+0f\/LG5+tFdrTAjPAv0PfvqYXPX\/9nZmk8dNPiMmSU\/dcmFD72yL2jHSYRjx3avQG5qnCKra2vzVO8B5jFD1mdEFkwW6NUBiqBv7ty55uqrr84jNZj7x44dSwQDubennHJKYbog+AgnmfKfTjV9F52e9Md3m14+bP7p54fNHZ88M7lX5GL\/F948avBv9B+dZP7mI6e1jd+3cW\/y3ff+7ZC56+O\/b844Y7j5twPvmwefO5RUgkafvAs04pp5bvpenkubvOdk3Zf8f+vY7yd8w5xx7Xn3eNu8fZ5TV980+alDLqqeA2jHv0mTJnXtKIXc4G1oh3fffbe55557Eq+z\/uzCFO4zXnfddZnmcR3m84oVK8yUKVMapSliS2Hfvn0JzUUPHoImNX\/DziQzxQZC1NqQwuZ6ccxPfORMA00TYyANDhee8a3Pn2M+NHxYoiFu2HbAjPrDk8yxY0fNwd8OZLQU0U4\/t\/ols7HvvFzSZq152WyYd25uuzINfPhf5nlV97HRX4dcVE03xgPtBw4cCEtT1B5dbZ5mgWKaN5igeNNNN0VHi4Mk+Ww2u2SEuLQhmbZiEriXldnhQ3+RoOy80mEOrLY28aG\/7DOr7Gej32XNXdpUSadtrBB4b91T1OewcM8Pp\/jlmc8yDRCapQ7R0fdjSM5g0fARDNe4uax2Lqlsso0ulOBDf5Gg7AiKdoiy8b8KuagbEDG+j+xURV9qSI4MrZHeaBfPswzOthWmjcHb2cvnIxhFNa2sHGY4PlgkguW44PmFs0SX7EI71mbUaX5FhLXOoGxXOnz47\/qMOtvZ6C8qF3XSlzV2CLxPQFGCXhODnW1MHqohOUU0Lew7SnDTOcwAwBvWv9yqsyhzmHXJLl1CS6f5FXnJ6grKdqUhhBfTlVZXE7SIXNSlgbvMKQTeDwJFTfjMmTODP6QqguKJPT7uC4EnMmfXtg8IkEMbaH46dIfxhOgn859thWflviM1yuPHjw8qHebyUpDOvHqKvucr17Un6jrHOtvZgCUEDdxlzsGAoo1YnWMs2zRBm+xlTTHP5IWmBU0OJft51ABNXvyPPUCAIavF4H8AH14cFk9AP55nLFPzoBHikkUWGAdJIIa3mWa3LB0G89r1qiMom8+WGrEt5VGa\/0VO83OdW93t0oCl2xq4y7yDBsW0CWQVgnCZdKfa9Coo6heanwl2yGGWjg+p8cnCDzCbCW74H5oZLuYwS1NZpuaxyCrPd8H4+A7P5\/gAlWU\/2JWcfoeQIo6ljzvolCzI56R50yVgghcw\/+Vpfjbw1OfadGM+tmemAUtdaZFVzrsRoCgr3mDyTTGnewUUtaZCkxeaGi6mz8H8paNDVq4GOOEiaPHl1sUZWNpLVrHBdyz\/D6CA5kjzXILggAk+rKV9ou2IYaYFiqSTmmSVL1HRsVzCTtBm+y\/3mO37jrdO89PPCQnoNW1ZwFKnBl50LYoAehVju46RGpLD0l4YKK08l+tDutGuF0ARmgpS2iDIACSYqfibIAdNhXt8dHzYzloBAKK\/3EC3bbzT7GYVG6lV8aAraI3QEkELzWupYeJv0PT224fMHZ89ty343DUspE55caEBoIK0xbwCsi4AW+dc0sYOQdsqO+8QaG+BIszi1atXt+aiD60qO8lu9WsiKMpfcZxxgswRXP2fGp\/kBcvwGGiAdDboclz6xafJK81XWxkv22FWAEOAHzVTjsUDr0AzvmPxWHz+9L3PJ1ktNJ8pAy6AVLe8uISm4MXkwVV5GUUhzKmIplg3f33HDwYUGZLDfGffiYXQv2mgKPcK4ajAucMPbz3c2qeT4TFoC21Mm7LgO8xoHUzNM56lcwRtCLiyH7VQaIs0vQHKMI+plQIQpXcY49OERpvHrx0I9ZGgyPl1M9wDc3MJTUGVH4Di7rs\/mptmGUGx2rc9GFDEtGRANT43Ze8wbUm6CYouGSGgOy0rhN7bay\/5cKKlAWgAYmhP7ZAgBPDB37wP4Hv0uT1tXmQ+C2OxHBfGHHj+3oSFDM25+OwzkthEmukSJKGR2g680iCcVTqs6BnSVbxyaXxOo4X7q8gPb1KRWW1p6NMUq+Bl3WMEBYpystq5YstKqZs5vuN3CxTzwj3oseRGfdp+oQ1Z6On+AAAYhElEQVQAqanRy4ux6DUGGAL0dHwfNEfZRu4XDpjQ41vgyH1LtAE4oh9AWJrdrue9wFHBPUXOtRtHgNrWA3unnKv2INP8RxWhy84f25gis9rS2LNnT+I9LxsS5fv+le0fLCjKCbGG4u7du1tfD9U4xTwN0DXcg+andJpQm7MJE4BJAiDBBaBFbzRjD2HyEiBZgRoAgIttoCFBG\/rxK2+3NEyayHSeAPxoQutzVXS8G+fN80u++5M3klJhKH2Gklv0YPsGXBd90dLWgyDNudJbT37B\/D\/52NumKUVm9Tw1sHC+IYRE5a1hI0BRT2Koxim6aIBZ5xoTUGmuEhABRjILRYa90KSVThW5n4e14b4fTWh6hmkSM46QzhKW+JcmL\/cU9bnP+F57pAneUiMlwAL08DecLMho2X9kcFZN3kuRdT\/vR0n3JV8HeLqnLWsH35Fe8owZQHwx6f3POs2v00Bv44\/2gpetkuOzNlX1DRoU0zJammJKV2k+u2qAeLngSLC9vAQpaGkAGhnnR1OZGuCO3YfM1JUDwdT8jl5feHnRXjta8J32UlPzwTikjcJr88LanAbaI83+GuTl\/OoQbJcfJZ0xQ2+9Ll4haWdYk3QASfplnCjmqE\/zqwoMfMbR65bG\/xCdQnredchOUd7m5j43MUYRTKgSFF3i0WTws63IQlbGCff2uPHPkBCE5BA8qRUCJPFiMm6QwIn\/mXdMIaCGQ++zLU6R\/Wxea\/ljUCQXuahg52mArj9K2jyUXnebRkezUv9gFKW\/6EtXdXv9AxdB0Y\/DbaCIEvhr16418nwUv+G717soKGa9mK6\/sNzAlxVkbBkneBbA7Z9\/+fbvMlIGArIZ+0dQhPdQ7jvqPUjuM8ogY9sRoQRQ6W2l04aZMAi5Qa40zG2CK01M9JP8ydOYioCKiwZYZFtCaqyuR6rCW5+mKebFKXZPwk88WYcZ2fhPPnc7JCqPX0VkJ2+ssvcrP+K0LCFV9ysCinkvJu4zODmLTsbrSfBhAQV8J0GQGqDc86NphpCcvu++lJwNovcc6VgZiDncmwAZ9hWl8wV\/aw0Qn2le42+MA3ql15pjSPNchgC5htO4CrarBqg1Oa6BXjdd+3FgzvnnTDcdFHVEQNqeImTFdQ2rfh9dx3OVHdfxyrQb8qDo8mLSPMnaVCfIYBFYoUaapPie3k5qfDJ1D2MDlKilyTbYK+NYGEfuR6IP2jK2kCYkw3CogeJ\/Fm6AhgkAlt5nephpUlLjggZJRwUr7oCeLM3aVbCLbEvoHyXbukmNXq4HNXD9gvSK+Yx5yYiANO9zN0KiioKSq+wUHbdI+yEPii4vpmstOpip9A4zvo8OEmpnAEwGTqON9DYzlY4VbAiiPBYUmp4Mrsb30nM6oB0OBGMT1KRmQCDTRSLQVtdTZD8NNDzrOMt54Vp5u8i2hA4LsuV4M4uG86fmjrZpHuQ8R0sTzGfKFvd9YWkwTrGbIVFFgIhtIyiW4ZpjnyzzWWo5OhsjbXiXWnToC5CiqaydFyzjxfJefBZBj1ogtUQCG15qDYAcSzsXXECeTiGtfdn6auCSlXOynBculbdd8pCp4ebld9v2UvHjgzWQ6Y0YT3qQbf1CeDEdxbytGeX66Z8fqCUkqgxNRfuEwPshpynqfShuUsszSGzFUAEOrAyDMeTmP+MI8b2tRBcdKxj3RFbKQB1CGzDyaFJ6n9HGZvq4gFgWyGvtSwOgbXMez9R7cPoZaAOn3fWXTsjMHXbJQyYNsqYjgVLXfrTxyOXHTPcL4cUsCiayfZPpD4H2IQWKtn0o+WJyj0m+bDLYmYInM0So5bFyNV5emUKGvT6m5fF\/aIqywrUUaPRF7vCzrx4eBLC2F8VWESctcyFPQ6bmlrVfSMdRlhcTgk26ssxP120JesV1EQrujaZlzHC9dWwhvmcMpw1IQ3gxIyiOyi3G4cOjrL5DChRtGQ46s0PuydF8ZYUYvIT0IMOcY+EFtKNjg3uKstYgPcayFiHHlt5nAg1DclCQIG9PywaKthddash4JvbfbADOPTbGVUpP9oCpOVBHsQpQBA+KaHJ5oG7TWGWYEUxpbT7bXo4IinXBTf64IfB+SIFiWoYDM0xo5kK7Y7l9AoGMBaRGKfe5ZPC29AZLMYCjhICE8aitsEiDDt4GIBWt0kLtS6e2EZhlKA\/3JQngzHVmGJAGV3p0ZWiPTcxtVXLSXgfyskwqXRFAzX8dT7QI4cUsQq9u22T6Q6B9SIEiMxykI4TVrOkJZp1BWR8QL652SgBg5\/zFqFa4ig6\/4UvONDmpOcpqNAQmCUAQjDu+97KZfPaoUlVaGETOMmF0JuDloSYsYxJlJowET\/2yERRdKlLLKjl5L7jUAF00OY7nA6hZNIXwYubxrFfpD4H3tYCirM1oy5WW9ydPnmzWrFljhg8f3lrnrPs6JzstDdHmfZYhGjQDZYl\/KWjSYWLLjKCThBolaw3KcWmKAkTkGSfc80vb16JglKnSIvfRAL7cP5OxjZinbd8RYIrv81L6uA9rc0jheai8jSo5UyaNzTX\/fV5+9C0LqL0KKphXCMBSdl1DoL1yUASgrV+\/vgV0ACdU1iHw6c9ov2XLltbZ0nn3MRau\/v5+Q4CcNm2amT17dts62ECRWpsEPFuJf60ZpuUO44FS42IOM7QxaoY2p4quypJm\/pSp0kKtkGa\/Hpsa8cfOOWOQFmpztNg0N3ri00xelt4aNap7m+VlX8qmg0rT6e85ULSBFL+76qqrDLTCRYsWGQliOAphwYIFZvHixWbMmDGZ97HgCxcuNMuXL2\/lZwP81q1b1wJVvgxpmiIAT5p\/MlZOFmSV4SqsSMOME5ldwv01GftH7QXf2QAwLWhZaj04owW5z8w\/lk4C+Z3OC5ZgKAPI6SRi+JBOnaNprMN0bCY0nDRZsX8hCHYExT2miT9KIchO5ZqiFkae\/wLNbuLEiWbevHmJljd16tSkqQTSGTNmZN4fN25cm9aJ\/iiCq4ES3+eZz2mmJZ0N2rEC8JTl\/OVeoTwM3uV4URsoSu+wzEjQlZO5j5Zl\/rMoLT3lAEDsf2JuBD9dUZtB2S65wnk5tCEIdgTFCIplZaB2UJTmMQCQWqGsxAOTePz48QagmHUfoKi1QqlpyjEJijfe+jXz2w9NazvQCcxCuXkABNKgECx90bjTkr8BfJt\/cSA5Sc+WwwxgmXXBiORgo1WzzjH3\/OiNtrNTvvX5CeZ\/\/OPOJKPgievPM\/M37DSrZk1Icpo3vnQoyXb531teNxv7zmutGZ4F7QvtAFYAlb1795qzzjrLvP3vJ5t7fvR64qnmHhr+nz99ZDIW+04df5pZtXkgxQ9pdgBBtucxqaAH7TZs228efW5viwaMgX3E5P7K3\/0\/\/rRBMiXbZeWBS\/qHDRtWVja71i\/S3zXWJ7KPwP+xY+vfj06bZa2gCEC87777WuXI0gCsLlC88gs3mcMfu8X8vw+cmYAgQI8XgPCOTw58D4fGg1eMTG5d\/8TeBCRxj38DDPA5+f6HA4CJC5\/\/5iMD4PFPPx84kpTf9V10evIZ7Tk2Pvdt3Jv0wX1eqIaDa+a5A2MdO3YsEQzsKS555t2ERoyLdnvePZ70x\/NAE2lBX\/w985E3ku85FsZDP9xDH\/TFWA8+dyhxhoAn\/Bvf22jEd7pd1mtD+nEcwSmnnNK9N6zkkyP9JRlXQTfwHv8mTZpUu5Ou46CoAREESFO6bvN5y7++kmg\/2KeEdgeTFFqQLMAg0+kICCzrD01v+qQzW2eYQJMEIGlNEVpjC2gXD6TtPX7tRwwcGQjuRp8FfzU2+R6aKWiAhin7fW71S22aIzTqbTvfNEt\/fNj8r\/\/6ZwmIJSC8+CetvtTaYBpLrRPj4zmkgbTNWjOgiULrZC417pE3UkAwNrRJ7GOCD5w3eOhygf59+\/aZkSNHdk2wXehMaxPp9+GeX1\/w\/sCBA72nKaad42JzxNTlaMGLf+OaZxLv8LT\/fM6AJvbtba0sDp7PwZhBCZZoq0NybIUXWBWHoSkMVWFIC2hgRogMv7FVc5Hjw4TAuc\/QtBjYDZp0AQVbYQeZTy29wwwr4oFUALy6Co7GPUU\/YPDt3WT+h0B75eazDsnRC5wXcpN33zUkBwC4bcM3zD8u\/VLLqQNggBZFwEP6HlP1AFos2WUDRVvqnAxNYboewI3B0NDicOnc27zUPFvucJp3mLGF3OMD6PFEPzhEdEkw0pmXleLzYoYg2JH+6GgpKwOVgiLN4+3btw+iZ8mSJa1Ywk4EbwMA33n474w8jpXB26wnKIu8SiDEfQ1u9N7KielKzxJw0yoc08sstTRb5WQ4cmTuM7VCnU2iA8vZTmq6+A4FZWHS82iCOguORlAs+zpW06\/J\/A+B9kpBsZolrWYUgMWh9fPN+ofubWmKOjWPMX0aQAAcuhI1wExWcJbgxjCZgZCdwUHRcka2+n24rysnAxSZ+yzHp0nO6tcs7CBP\/WM1HgI9\/idg4+86ARHjhyDYPlIU6ffhnl\/fEHjf06B44If\/YDWfCW5a+yL4YFl1sQeYomjPfTqpfcnSVWWLFMg8Xjg0kPt8xhk4m3hY22Hy8nhUHjalq3HLIwowl7wMGj8xHtw7BMH2mVOk34d7fn1D4H3PgiL31h64fISZPf3PkpWC9ojMDlTBkY4VmRfMfGVd1NR2KBLGlM4MamR5ucNpMX7MaGHlZITBYHweU8Dx6UxhNW6WPyMA4v9unk8cgmD7vJqRfh\/u+fUNgfc9C4pw2Hz68SNtXmRWvZZmM81K5iozhY7Va2S1G1nuK8sE9S1SQMFIy33Oc+T4iaV\/7xAE22cWkX4f7vn1DYH3PQ2KCN5+568HCkjok\/MIhtI5AjMUWh73E+G55Sl5cqk5lk1T9BOJgd5SMH7z3sAh964FUqt4vu8YIQi2zxwi\/T7c8+sbAu97GhTnzJljln37YfOr\/zCuFZoCEMTF3F+erAcTlPnErJPIE+uwdwfvLQEUbWFmD8Q67kn2GvHZVkqrjIiEIBhl6GafSL8P9\/z7Npn\/IdDe86AoQ3L0wfTUvgByNJN5rABLfkFEeV6yLBNGjZL7fPKzr1iHIBg+c4j0+3DPv2+T+R8C7UMKFG3FYiWosdo2NEQEN9Pzy+9ldok+SU9\/9hHtEAQj0t\/M4Ge9\/ZJ3xo\/POtfRNwTZH3KgmOYgkTUQdRB2Wv1D\/b3r4e55whSCYOTRmHU\/0u\/DPf++TeZ\/CLQPOVB0qRcITVGeyZJ2aHsERfsLHIJg+0BLpN+He359Q+D9kANFnZkil5D5xfhOVqC2Hdqu0\/Vs6XtlxSMEwShLe9PNt0i\/z8r79w1B9ocUKMo4xbTzRZgiJzVK26HtOl0vLX2vjJiEIBhl6GafSL8P9\/z7Npn\/IdA+pEAR4oY0OVlRG98x+0MeN6pPrJPpe0zJ097oqnKKQxAMn1cz0u\/DPf++TeZ\/CLQPOVCUOcasZIPv9HGjup38nFYnMatEfxFRD0EwitCr20b6fbjn37fJ\/A+B9iEHihA51zQ8WzseeCU1zLQyYWXFOwTBKEt73JPz4Vw1fZssPyHQPiRBsRrRq2+UEATDZ3aRfh\/u+fdtMv9DoD2Cor8MVj5CCILhM6lIvw\/3\/Ps2mf8h0B5B0V8GKx8hBMHwmVSk34d7\/n2bzP8QaI+g6C+DlY8QgmD4TCrS78M9\/75N5n8ItEdQ9JfBykcIQTB8JhXp9+Gef98m8z8E2iMo+stg5SOEIBg+k4r0+3DPv2+T+R8C7REU\/WWw8hFCEAyfSUX6fbjn37fJ\/A+B9giK\/jJY+QghCIbPpCL9Ptzz79tk\/odAewRFfxmsfIQQBMNnUpF+H+75920y\/0OgvVZQxOFR69atM0uXLjXDhg1rrfZjjz1mbr311uTz5MmTzZo1a8zw4cOd7h85csQsWrTIbNq0KWnf19dn+vv7B0kSno3jCGTlbX9x68wIIQiGz0wj\/T7c8+\/bZP6HQHttoEhQmjlzZhso4vtly5a1gBAAuWXLllabvPvoiwtASICcNm2amT17dps0RVD0f7nKjhCCYJelHf0i\/T7c8+sbAu8rB8WDBw+aefPmmf3795tPfOIT5t13320Bng3E0H7BggVm8eLFZsyYMYkWKEFO3ge7Fy5caJYvX24mTJiQcD9NG20yKO7atcs88sgjZu7cuWb8+PF+UtaF3pH+LjBdPLLJ\/A+B9lpA8cUXXzSXXnqp0VogARNa3tSpU5NllEA5Y8aMBFDT7o8bN65Ny0T\/nTt3DgJKgiXM5\/nz55uLLrqou1Ja8OlvvvmmueWWWxpJO6Ya6S+44BU3bzL\/SXs3t70qB0W5vjZQpFZITQ\/tYRJDIwIoZt0HKOo9SqlJyjHfeOONBFieffbZikUuDhc5EDlQJwegxKxYsSKxHLtx9SwogpkARvyLV+RA5EBzOAAw7BYggksdB8Us87hK87k5IhApjRyIHAiJAx0FxU46WkJicqQlciByoDkc6Cgo0gHSiZCc5ixBpDRyIHIgJA50HBQx+U4Eb4fE5EhL5EDkQHM4UCsoNocNkdLIgciByIEBDkRQjJIQORA5EDkgONBzoOiaGx2aFJDuq666qhXYDhpDnw8D8rdv356wVOeih0y\/pm3JkiVt6aIh067lV6fHNkF2kHhxzTXXmN27d7emI+WnW\/zvOVB0zY0OCRTl4utI\/pDnQ0C88sorEzCxRReESj9pHT16dJJBZcu2CpV2LbukHd\/L4iqh0w\/fAi5dt4Dz6xb9PQWKtpS\/tNzoUECRTicUznjttdfaUhxDn49NO5H8RuC8a656p9fDxlv5EobOe8kv0g3eExSbQD\/onj59eptlxHl1k\/6eAkXbS5qWG93plzDteU899ZQ5\/\/zzk9s6sL2J85GpnTCpZfgV5hjqemhNsSm8B52bN29OwEXyOnT6oanfdddd5mc\/+5mxbb10k\/6eA0XX3OhQQJF02Mw3m5ablusdwnxswBL6esitC7mf1QTeE1hQTemtt94aBIoh8z5t64XbGd3kfwTFENDEGOueVjcFoyhbKOSofsSiv02iH\/PVWm7IoEJ6uSenNaum8V5bEQD5bvG\/50CxKeZa2ma5LJvWTROiCCjaABH9m0K\/bR9La16hmf7YhkDNzdtuuy2pam8Dxaa9C9IK6ib\/ewoUu7k5WwREbG1t5nMT5sOwihtvvHGQFzFk+vMAG2sUqpOIWiKP9JDyBPNz7dq1yVch05\/G\/7vvvtvcc889yXZAt+jvKVCEIHTLjV8HKIY+H70vZONBqOuhw4d0iE7ovNe8toFMqLwH7SGHc\/UcKHYr4LMuUAx5PjKHXc5fHkYWMv1NDjx3AcWQeS+BMbTA\/54DRV9wiv0jByIHhjYHIigO7fWPs48ciBxQHIigGEUiciByIHJAcCCCYhSHyIHIgciBCIpRBiIHIgciB+wciJpilIzIgciByIGoKUYZqJMDiI9bvXp12yO6ebi5JMRW3gyhRThTHCmK8YociJpilIHKOEDAwYBLly5N0s9wZWW9VPbwkgORtpUrV0ZQLMnDXusWQbHXVrSL88kqCwZtbP369W1FULtIauvRERRDWIWwaIigGNZ6NJoapJrdfPPNSe7thAkTcucizWzm7LIf09auu+46c8MNN7TG0ma4LmmPYr3UUllg4JJLLjFf+9rXDJ7xwAMPmIceeshMmzYtMZnnzJnTGhulw3ChPL7UdF3SGXMnGxs0hgMRFBuzVOETKtPm9HknmnoAoqwUjb8BUAQ9fpYgl9aHz9LmOz6jcC8uVqTWe4paU7QBe1GwD3+lIoVZHIigGOWjUg7ofGIMLnOh5R6j3scD6FFLQz6s1jolgGHMRYsWJdof6zfqsSdOnJiAIs+Qwf08ULRphZIu7pNWyrQ4WFAciKAY1HL0FjHU9jgrVrZO21+UlV527NhhPcoAp78BTG2AJ0EPYAnTWx\/xkAeKGEOCILVNCay9tUpxNpoDERSjTHSEAwCaTZs2JfuNW7duNbZagFKrdAVFWZS3KlCUDiPU9SuyT9oRZsaH1MqBCIq1sjcOTg5I0\/fVV1\/N9USnFSF11RThSJkxY0YpTVFqk7t27RrkeImr2tsciKDY2+vb0dll7b25aF8uJwESFIvsKUpt0sV8BtNAy\/e\/\/\/2Ef5dddlnq2cQdZXB8WEc4EEGxI2weGg+hNgiPsXR+cJ8O\/\/N77Um2eYFtZ4wQFJF9wj3LPO9zGVAkPaDZNcRoaKxy788ygmLvr3FHZ6irPfPhtjQ\/nQ4o2+SZz0zJ03GK8phS27k3tjQ\/0iHDf9KyczrKzPiwrnAggmJX2B4fGjoHYsB26CtUH30RFOvjbRy5wRywaaoNnk4kvQAHIigWYFZs2vsciHuJvb\/GeTP8\/ysxmtI1+if0AAAAAElFTkSuQmCC","height":252,"width":419}}
%---
%[output:91d25ac6]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Wage"],"columns":1,"dataTypes":["double"],"header":"5×1 table","name":"ans","rows":5,"type":"table","value":[["1877"],["2375"],["2450"],["2037"],["3893"]]}}
%---
%[output:915cf368]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"ans","rows":5,"type":"double","value":[["1877"],["2375"],["2450"],["2037"],["3893"]]}}
%---
%[output:97b320e4]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":5,"type":"double","value":[["1877","11"],["2375","8"],["2450","11"],["2037","7"],["3893","30"]]}}
%---
%[output:59705f8f]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Wage","Seniority"],"columns":2,"dataTypes":["double","double"],"header":"5×2 table","name":"ans","rows":5,"type":"table","value":[["1877","11"],["2375","8"],["2450","11"],["2037","7"],["3893","30"]]}}
%---
%[output:81c711ca]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"1×9 table","name":"ans","rowNames":["P0219"],"rows":1,"type":"table","value":[["'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"]]}}
%---
%[output:9dacf685]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"2×9 table","name":"ans","rowNames":["P0219","P0476"],"rows":2,"type":"table","value":[["'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'FAVELLA'","'FELICE'","'M'","25-Sep-1991","'C'","2338","21","12","7"]]}}
%---
%[output:113017d4]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"2×9 table","name":"ans","rowNames":["P0219","P0476"],"rows":2,"type":"table","value":[["'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'FAVELLA'","'FELICE'","'M'","25-Sep-1991","'C'","2338","21","12","7"]]}}
%---
%[output:83c0a5fb]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"46×9 table","name":"Womendata","rowNames":["P0211","P0214","P0215","P0217","P0220","P0225","P0228","P0231","P0232","P0249","P0250","P0252","P0255","P0257"],"rows":46,"type":"table","value":[["'BASILICO'","'TIZIANA'","'F'","16-Jun-1991","'A'","1877","27","10","11"],["'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'MAROVINO'","'ELISABETTA'","'F'","14-Oct-1966","'A'","1893","29","6","12"],["'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'SOFFIETTI'","'MARINA ANGELA'","'F'","12-Jun-1975","'B'","2226","47","14","11"],["'SURAGNI'","'CRISTINA'","'F'","30-May-1987","'A'","2103","12","8","17"],["'GRILLO'","'ROBERTA'","'F'","30-Jun-1997","'A'","1562","17","4","5"],["'RAVETTI'","'ENRICA'","'F'","12-Aug-1967","'C'","4185","18","6","31"],["'FERRERO'","'DANIELA'","'F'","13-Sep-1974","'A'","2287","28","6","26"],["'RIVOIRA'","'MARILENA'","'F'","03-Oct-1996","'B'","1760","18","6","3"],["'ROSSI'","'MARIA PAOLA'","'F'","19-Sep-1968","'C'","3988","29","8","30"],["'CARPINELLO'","'NADIA'","'F'","18-Jun-1985","'B'","2303","25","6","16"],["'MARIN'","'ELENA'","'F'","10-Jun-1973","'C'","2936","15","4","24"]]}}
%---
%[output:3335506d]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"15×9 table","name":"ans","rowNames":["P0214","P0220","P0225","P0250","P0255","P0275","P0285","P0287","P0303","P0305","P0307","P0317","P0336","P0340"],"rows":15,"type":"table","value":[["'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'SOFFIETTI'","'MARINA ANGELA'","'F'","12-Jun-1975","'B'","2226","47","14","11"],["'RIVOIRA'","'MARILENA'","'F'","03-Oct-1996","'B'","1760","18","6","3"],["'CARPINELLO'","'NADIA'","'F'","18-Jun-1985","'B'","2303","25","6","16"],["'DI TONNO'","'GIULIA AGNESE'","'F'","30-Apr-1983","'B'","2581","40","16","18"],["'PARRA SAIANI'","'PAOLA'","'F'","30-May-1994","'B'","2021","25","8","6"],["'CASETTA'","'CATIA'","'F'","21-Nov-1973","'B'","2629","24","6","19"],["'GILLIO'","'FLORIANA'","'F'","22-Sep-1985","'B'","1925","19","4","5"],["'CARLETTO'","'GERMANA'","'F'","19-Aug-1979","'B'","2259","26","8","14"],["'CARLI'","'ROSSANA'","'F'","27-Sep-1981","'B'","2653","19","6","20"],["'BARLETTA'","'ELISABETTA GIOVANNA'","'F'","05-Aug-1965","'B'","3139","20","6","31"],["'GRAZIANO'","'ANNARITA'","'F'","21-Feb-1981","'B'","1878","12","8","4"],["'CRIDA'","'ROBERTA'","'F'","07-Apr-1967","'B'","2657","19","4","29"]]}}
%---
%[output:844ed5a3]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"20×9 table","name":"ans","rowNames":["P0214","P0220","P0224","P0225","P0250","P0251","P0255","P0275","P0277","P0285","P0287","P0303","P0305","P0307"],"rows":20,"type":"table","value":[["'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'VELARDI'","'ALFREDO'","'M'","09-Feb-1961","'B'","4354","21","10","40"],["'SOFFIETTI'","'MARINA ANGELA'","'F'","12-Jun-1975","'B'","2226","47","14","11"],["'RIVOIRA'","'MARILENA'","'F'","03-Oct-1996","'B'","1760","18","6","3"],["'BOSSO'","'FABIO'","'M'","24-Aug-1961","'C'","4254","22","8","33"],["'CARPINELLO'","'NADIA'","'F'","18-Jun-1985","'B'","2303","25","6","16"],["'DI TONNO'","'GIULIA AGNESE'","'F'","30-Apr-1983","'B'","2581","40","16","18"],["'PATRIA'","'ALEXANDRE'","'M'","09-Aug-1967","'C'","4209","30","10","31"],["'PARRA SAIANI'","'PAOLA'","'F'","30-May-1994","'B'","2021","25","8","6"],["'CASETTA'","'CATIA'","'F'","21-Nov-1973","'B'","2629","24","6","19"],["'GILLIO'","'FLORIANA'","'F'","22-Sep-1985","'B'","1925","19","4","5"],["'CARLETTO'","'GERMANA'","'F'","19-Aug-1979","'B'","2259","26","8","14"],["'CARLI'","'ROSSANA'","'F'","27-Sep-1981","'B'","2653","19","6","20"]]}}
%---
%[output:61aca4df]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"12×9 table","name":"ans","rowNames":["P0222","P0301","P0314","P0315","P0317","P0324","P0326","P0330","P0338","P0407","P0470","P0513"],"rows":12,"type":"table","value":[["'RIVA'","'GIANLUCA'","'M'","08-Sep-1985","'B'","3370","26","12","16"],["'LUPARIA'","'GUALTIERO'","'M'","17-Oct-1976","'C'","3176","19","6","22"],["'ROSSO'","'PAOLO'","'M'","16-Mar-1965","'B'","3386","28","10","24"],["'ROSSO'","'MARCO'","'M'","07-Jul-1985","'B'","3262","15","4","16"],["'BARLETTA'","'ELISABETTA GIOVANNA'","'F'","05-Aug-1965","'B'","3139","20","6","31"],["'VAZIO'","'FRANCESCO'","'M'","01-Jun-1978","'C'","3094","11","6","20"],["'NEBIOLO'","'LOREDANA'","'F'","26-Jun-1966","'C'","3268","31","14","31"],["'AMERIO'","'DOMENICA'","'F'","19-Nov-1966","'C'","3363","17","8","32"],["'MICUCCI'","'MASSIMO'","'M'","03-Nov-1987","'B'","3225","29","8","15"],["'SQUILLACI'","'EDGARDO'","'M'","28-Nov-1972","'C'","3178","23","8","26"],["'CHESSA'","'SERGIO'","'M'","15-Apr-1979","'C'","3084","16","4","19"],["'LEVET'","'GIORGIO'","'M'","29-Sep-1970","'C'","3300","13","6","28"]]}}
%---
%[output:172822b6]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"4×10 table","name":"ans","rows":4,"type":"table","value":[["'P0287'","'CASETTA'","'CATIA'","'F'","21-Nov-1973","'B'","2629","24","6","19"],["'P0472'","'CASTELLANO'","'PAOLA'","'F'","02-Mar-1993","'C'","2407","33","8","5"],["'P0508'","'CASELLA'","'LAURA'","'F'","28-Jul-1983","'C'","2675","16","8","15"],["'P0510'","'CASUCCI'","'PAOLA'","'F'","25-Apr-1995","'C'","2287","15","4","3"]]}}
%---
%[output:2a81af54]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"11×10 table","name":"ans","rows":11,"type":"table","value":[["'P0225'","'SOFFIETTI'","'MARINA ANGELA'","'F'","12-Jun-1975","'B'","2226","47","14","11"],["'P0246'","'ORLANDI'","'ALBERTO LUCA NICOLA'","'M'","24-Jun-1999","'B'","1812","28","10","2"],["'P0249'","'FERRERO'","'DANIELA'","'F'","13-Sep-1974","'A'","2287","28","6","26"],["'P0252'","'ROSSI'","'MARIA PAOLA'","'F'","19-Sep-1968","'C'","3988","29","8","30"],["'P0285'","'PARRA SAIANI'","'PAOLA'","'F'","30-May-1994","'B'","2021","25","8","6"],["'P0404'","'MARCHISIO'","'MARIA ANTONELLA'","'F'","19-Sep-1972","'C'","2708","18","8","16"],["'P0468'","'RIZZITIELLO'","'ANGELA'","'F'","17-Aug-1964","'A'","2443","18","4","40"],["'P0472'","'CASTELLANO'","'PAOLA'","'F'","02-Mar-1993","'C'","2407","33","8","5"],["'P0507'","'BOJERI'","'ANTONELLA'","'F'","21-Mar-1984","'C'","2459","14","4","9"],["'P0510'","'CASUCCI'","'PAOLA'","'F'","25-Apr-1995","'C'","2287","15","4","3"],["'P0512'","'PUTZU'","'EMANUELA'","'F'","02-Apr-1991","'C'","2456","37","12","7"]]}}
%---
%[output:71b09372]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"4×10 table","name":"ans","rows":4,"type":"table","value":[["'P0233'","'ROSSI'","'RICCARDO'","'M'","14-May-1991","'A'","1931","17","4","13"],["'P0254'","'NOVELLO'","'ROBERTO'","'M'","17-Nov-1998","'A'","1559","37","14","2"],["'P0411'","'MOURGLIA LESLEY'","'ROBERTO'","'M'","26-Jun-1997","'A'","1899","14","4","7"],["'P0477'","'POZZI'","'ROBERTO'","'M'","05-Jun-1989","'C'","2423","25","8","9"]]}}
%---
%[output:38803119]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"8×10 table","name":"ans","rows":8,"type":"table","value":[["'P0214'","'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'P0231'","'GRILLO'","'ROBERTA'","'F'","30-Jun-1997","'A'","1562","17","4","5"],["'P0233'","'ROSSI'","'RICCARDO'","'M'","14-May-1991","'A'","1931","17","4","13"],["'P0254'","'NOVELLO'","'ROBERTO'","'M'","17-Nov-1998","'A'","1559","37","14","2"],["'P0307'","'CARLI'","'ROSSANA'","'F'","27-Sep-1981","'B'","2653","19","6","20"],["'P0340'","'CRIDA'","'ROBERTA'","'F'","07-Apr-1967","'B'","2657","19","4","29"],["'P0411'","'MOURGLIA LESLEY'","'ROBERTO'","'M'","26-Jun-1997","'A'","1899","14","4","7"],["'P0477'","'POZZI'","'ROBERTO'","'M'","05-Jun-1989","'C'","2423","25","8","9"]]}}
%---
%[output:42568a82]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"2×10 table","name":"ans","rows":2,"type":"table","value":[["'P0215'","'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'P0277'","'PATRIA'","'ALEXANDRE'","'M'","09-Aug-1967","'C'","4209","30","10","31"]]}}
%---
