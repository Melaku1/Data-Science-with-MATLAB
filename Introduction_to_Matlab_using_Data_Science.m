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
X= readtable("Firm.xlsx", Sheet='data',Range='A1:J108',ReadRowNames=true) %[output:7754b813]
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
Firm= Y.Wage(1:5) %[output:0d43b454]
%%
% or we can make it 
Y(1:5,7) %[output:13e513cc]
% or
Y{1:5,"Wage"} %[output:4a50137f]
%%
% extract the first 5 values from both wage and seniority
Y{1:5,["Wage" "Seniority"]} %[output:40287cd8]
% or
Y(1:5,[7 10]) %[output:0f059c2d]
%%
% extract subject 
X("P0219",:) %[output:984dc89b]
% extract two row values
X(["P0219" "P0476"],:) %[output:4422ceed]
X({'P0219' 'P0476'},:) %[output:80e68596]
%%
% EXTRACT FROM firm all women
Womendata = X(X.Gender=="F",:) %[output:1157ba70]
%%
% select all girl with education level B
X(X.Education=="B" & X.Gender=="F" ,:) %[output:66911084]
%%
% select female with education level b or male with wage grater than 4000
X((X.Gender=="F" & X.Education=="B") |(X.Gender=="M" & X.Wage>4000),:) %[output:387d77de]

%%
% select all income greater than or equal to 3000 and less than 3500
X(X.Wage>=3000 & X.Wage<3500,:) %[output:90c7d8df]
%%
% Excersice 1.9
% display record where surname start with "CAS"
na= "CAS";
endwithna="LA";
Y(startsWith(X.Surname,na),:) %[output:92fa9009]
Y(endsWith(X.Name,endwithna),:) %[output:788984c2]
%%
% Display the name start with R and end with O
startr="R";
endwithO="O";
Y(startsWith(X.Name,startr)& endsWith(X.Name,endwithO),:) %[output:3efe3975]
%%
surs ="R";
sure ="O" | "A";
Y(startsWith(X.Name,surs) & endsWith(X.Name,sure),:) %[output:3807db4f]
%%
srs ="P";
sre = ["O", "A"];
len =7;
Y(startsWith(Y.Surname,srs) & endsWith(Y.Surname,sre) & strlength(Y.Surname)<=len,:) %[output:5581dcbd]


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":33.4}
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
%   data: {"dataType":"text","outputData":{"text":"    x15938    x9634    x21830      y  \n    ______    _____    ______    _____\n\n     8.29      7.95     5.42      6.18\n     3.14      7.14     3.35      3.44\n     3.06      7.25        3     -0.58\n     3.64       6.9     5.86     -0.09\n     8.24      9.72     6.03      6.26\n      3.1      3.65     3.38      0.35\n     3.09      6.21     3.51     -1.53\n     3.11      6.39     3.62     -1.53\n     3.11      7.35     3.44        -1\n     3.15      5.95     5.18     -1.77\n     3.09      8.17     4.11      2.01\n     6.94      5.64      3.5     -3.57\n     5.05      7.83     3.77      5.26\n     3.74         8     3.72       3.8\n     5.29      8.25     4.32      5.01\n     6.16      8.33     4.01       5.9\n      7.6      7.15     3.66     -2.88\n     6.88      7.32     4.36      5.85\n     3.34      6.08     3.55     -2.48\n     3.48      5.05     3.66     -2.75\n     3.64      7.14      3.5      1.72\n     3.71      5.97     3.62     -3.23\n     3.34      6.57     3.57      0.63\n      3.2       5.4     3.52      0.43\n     3.18      5.81     3.37     -1.99\n     3.18      7.12      3.7     -2.21\n     3.45      5.95     3.56     -2.68\n     3.88      6.69     3.64     -1.64\n     3.17      5.53     3.46      -2.2\n     3.36      5.85     3.48     -2.22\n     3.17      5.95     3.39     -2.71\n     3.46      6.76     3.66     -2.89\n     3.57      5.92     3.55      -2.7\n     3.15      4.28     3.39     -2.79\n     6.25      9.45     3.88      5.78\n     4.61      9.51     4.49      5.76\n     4.45      7.53     4.73      5.51\n     3.35      6.92     3.55      2.24\n      5.8      7.83     3.71     -1.31\n     5.37     10.98     3.63      7.94\n     3.83      8.18     3.71         5\n     3.18      7.11     3.66     -1.33\n     3.48     10.44     3.84      3.19\n     4.22      9.34     4.67      5.82\n      3.8      8.83      3.6      5.52\n      4.4      10.6     5.08      6.59\n     3.75      7.33     3.45       4.8\n     4.22       8.3     3.95      2.75\n     7.22       7.6     3.65      6.55\n     3.33      8.73     4.33      1.84\n     3.66      8.35     3.65     -1.69\n     4.39      6.36     4.21       2.2\n     4.18      8.66     4.58      2.52\n     4.12      7.24     4.14      4.18\n      5.4      7.52     3.74      2.96\n      3.3       7.4     3.66     -0.59\n     4.87       6.3     4.58      6.79\n     3.79      7.25     5.94      1.23\n     5.77      6.96     3.67      4.32\n\n","truncated":false}}
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
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"107×9 table","name":"X","rowNames":["P0211","P0212","P0213","P0214","P0215","P0216","P0217","P0218","P0219","P0220","P0221","P0222","P0223","P0224"],"rows":107,"type":"table","value":[["'BASILICO'","'TIZIANA'","'F'","16-Jun-1991","'A'","1877","27","10","11"],["'BONINO'","'PAOLO'","'M'","01-Jul-1993","'B'","2375","35","12","8"],["'GRI'","'ALBERTO'","'M'","19-Oct-1987","'C'","2450","39","16","11"],["'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'MONTANARI'","'GIACOMO'","'M'","24-Sep-1974","'A'","2314","29","10","23"],["'MAROVINO'","'ELISABETTA'","'F'","14-Oct-1966","'A'","1893","29","6","12"],["'MONTALDO'","'DIEGO'","'M'","06-Mar-1966","'A'","2443","16","6","28"],["'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'ROSSI'","'FABIO'","'M'","11-Feb-1988","'B'","2593","15","4","13"],["'RIVA'","'GIANLUCA'","'M'","08-Sep-1985","'B'","3370","26","12","16"],["'TRIPIEDI'","'FEDERICO'","'M'","18-Jan-1995","'B'","2141","27","10","6"],["'VELARDI'","'ALFREDO'","'M'","09-Feb-1961","'B'","4354","21","10","40"]]}}
%---
%[output:89a27192]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"107×10 table","name":"Firm","rows":107,"type":"table","value":[["'P0211'","'BASILICO'","'TIZIANA'","'F'","16-Jun-1991","'A'","1877","27","10","11"],["'P0212'","'BONINO'","'PAOLO'","'M'","01-Jul-1993","'B'","2375","35","12","8"],["'P0213'","'GRI'","'ALBERTO'","'M'","19-Oct-1987","'C'","2450","39","16","11"],["'P0214'","'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'P0215'","'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'P0216'","'MONTANARI'","'GIACOMO'","'M'","24-Sep-1974","'A'","2314","29","10","23"],["'P0217'","'MAROVINO'","'ELISABETTA'","'F'","14-Oct-1966","'A'","1893","29","6","12"],["'P0218'","'MONTALDO'","'DIEGO'","'M'","06-Mar-1966","'A'","2443","16","6","28"],["'P0219'","'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'P0220'","'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'P0221'","'ROSSI'","'FABIO'","'M'","11-Feb-1988","'B'","2593","15","4","13"],["'P0222'","'RIVA'","'GIANLUCA'","'M'","08-Sep-1985","'B'","3370","26","12","16"],["'P0223'","'TRIPIEDI'","'FEDERICO'","'M'","18-Jan-1995","'B'","2141","27","10","6"],["'P0224'","'VELARDI'","'ALFREDO'","'M'","09-Feb-1961","'B'","4354","21","10","40"]]}}
%---
%[output:16321ec8]
%   data: {"dataType":"image","outputData":{"dataUri":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAATgAAAC8CAYAAADsKbIQAAAAAXNSR0IArs4c6QAAIABJREFUeF7tfQ+wVsWVZ2eDC2TJrBKMgBAwIxC3KkssYyDkDxkTaqxsyGasMAqzI+sQpZIYmRoQnphETaL8dTIYHRcjstZWARmmZEoyO5nZSVY2iYnJiFpWigTyB5XwJzyRilTUibvZ+t1Xv8\/zzut7b9\/+7v369nt9qyx839fd9\/Tp07\/vnNPnnH7d7373u9+Z9CQOJA4kDgxDDrwuAdwwXNU0pcSBxIGMAwngkiAkDiQODFsOJIAbtkubJpY4kDgwLADu0KFD5pprrjFHjx7NVnT27Nlm27ZtZvz48bWv8Ne+9rVszCuvvLIzNt7\/4IMPmptvvtmMHTu21ndu2LDBbN261TrmwoULzfr167N3kgdouH37djNjxgxnOk6dOmVuu+02c8stt3TNM4y1bNky89RTT2XvX758uVmzZo2Vll6tWze8sRGeN55NNpwXoaGGcj127Nhh5s6dm71Jfi7lCN99\/\/vfN0uWLDH684ZIbHTY6AFObxJyqwmQI9isW7euA3BNC0MRwGGuFMIjR45kIF8V4Mi\/c889t5YfBU2v5JWU5F6uWy8AziYbje5cx8Ffeukl09fXZ\/bu3WtscothJk+ePOhHkXMp+nFyfH3wZtEDHBeDGx0LSg0ib3P5cj0kwGlhI7BSODGnNgFcGe97uW6+612lX1sBDnOwARa0zZtuuqkzRWp3eYBYhRdtajtsAE4CABdPfiYXzvarJVVzLhDBY8qUKZ1fQfkdzNQvf\/nLg9aTG1trKJIWaR7gc5qg0oTgoHm\/ptr0eNOb3mQFuCIzkCApJ1D0q615iH6kWZumeTwumpdt3fS42myS\/Jk+fXpn00oNPk+DKzORSc\/8+fMzsvft25dpzJ\/4xCfMJz\/5yeyze++919x\/\/\/2ZhiRl4z3veY\/ZvXv3EBO9SOPP+07LgKZba2AaYDgueQKXBrW6973vfebb3\/52h07y++TJkx2tTmvleg0kPaBl8+bNGajCTSFlOg9UmwTE6AFOMi1voW2bT29A22ZHGwjF3XffbTZu3DhEiPMAbtq0aZkPQz82LVODqfad5QGciwaXNyfy6fnnnx9CZx7A5fEQ9APUFyxYMMj3VgZwLuvmYsa6+Cht5nsZb7AOekNiTuDPFVdc0fkxyQO4L3zhC+bzn\/+80aZ\/kaZnA5e8HzL6m8vkB99rgMePIawcPPCPrlq1ylxyySWZPxegBNklGH71q1+1+oApJ0VyIX8A89apTNPvFvyiBzibVsFNx4MACqr8VdfAwb\/5i2P71XcxUfFu\/jra1H58NnPmzA4YlDlyy3xwFLQ8IYbAStDSpiE3f5kPjv0kDzXIAhRcTTWXdbONpT\/j3\/LHjeudZ75zg5fx5uGHH+5ohFITcZENOT+t5UJG8g7B9Py0VkcAotxIecsDC00L+vAQAQdLOGB6\/PHHM41t\/\/792ZwhM9dee20HCEkvecv3k0dSLuQPA+ZO60LKWN2+3zwgjB7gOLEic8t102GsIlPWBeAIGPoXlnRqbcdmlsrFKgI4KdB601E704ctuh3eBd9dEcDlncTZ\/DVVeI13560bNxdPY7UAE7RtGm7eHDEGNrErb7jZ80wyjpcH7Nrk5lyL3AAa0O66665Mg8pzfZT9QJJvcl0OHz48aMyi79hfa9N8r6YP7bW8PPPMM4P8fXIty8zrEa\/BaQbITQfmSROiSB22mSPazKoD4OQvo\/ZR2BYzz0TVbfMATm8AbQZVATjpl7FtHGjMVQGO4+h127Jli\/nSl77UCTfR89UbTIKGK8CV8aZbgJNainRzFP2oyfWhL0vzPU9Wi8bV\/kTQxnAigiq0uhdffDFzxWAs\/DjSGrHxHyY4THF9Qqs1xiKAk2Zst2Bm6x+1BlcW40PBeOihhwb9YmlGaKc\/\/BIuZojUQKqEa+TR3QTAtVGDc1k3CXBFG7fNGpzc6J\/73Ocys7TMFQAZ4JwAOI888kjHP2aLsZQacJE2V3Sgov1olJmDBw92fLRcA2mi5gFcngbnqm3WCXRRA5wUIMk87YPhL7HNT6BPxfirpseQZojUFopOqGyOWO2DczVRy2KSuvXBSXOrCGjr8MG5rht\/mIr8TT4AV9UHV8VE1euktS0Xp7oGI9lH+8AAeloGbQHuRQHY2i2j\/Ws2\/vv44OC2oby70FwH0EUNcHk+HDLG5aRHA45mqvQRaH8Y+uKRJ6Z4J8IKXE9RmwK4vFNAbXbn+Va0tpB3oonx5AZ0NVHzTjExnj440f7MosMi9C8zUV15YwMT2\/jyx4\/yYwufcfU3aXNdZqYUnVpWCfHRQCuBmOMUrVFRRADWB9aTBLR0itoFXNs2n17AohguKbRYFAqiNm21cFGI5eLlCYfUAnphojLcpCzWC3OXwl1kRpTxUJpXPpqKBku9Lvhbm9w+Gpwrb6oAXJ5sSJ5UMdHy3o3xbCDnwm+bVcJtJ+UkL3YN9K9evdpcf\/31GYAReGVfrA98hwg90T5mDXIuNHcBC1nXRjQ4PRH9yyU3lC2lquh7vcnKTLduGZT6Jw50w4HhlhmgeWEDzbpT47rhf+0AV5a4DbUXACjjah599NFO0njZ9+iLBwcBFJ558+YNSn7vhiGpb+JAHRzIc9w3UQCiDnp9xyhyXVTRWH3fX9avdoDDhPMqa9gACYKwcuVKs3btWsOUKAlY8ntMBioysgpoZgAQd+7c2QHIsgmn7xMHesGBIj9aL97fy3fYQK4N4NaIiQrAQewZ8tvwSPOUv2rQvli2RYIe033yvkcKlNT+MD6Yq0EPnyPgFv\/hmThxYvZfehIHEgfCcGDUqFEG\/\/X6qV2Dg02+a9eujgkKwIPDEQ5JHM9TW5M5lwAtJEoD4Iq+B8BpbU1qeBwTwHbjjTeaxx57LOPn0qVLzdVXX91r3lZ+36uvvmp+85vfmDe84Q1BhKEywcaYGGnGPGOkO0aayeuzzjors9B6DXK1A5xtk9BvhvSbXgAcj7c3bdpkzj\/\/\/Gg0OGizJ06cyOgdM2aMD970vE+MNINJMdIdI83kdX9\/v5k6dWrP5bonAAetDvlvzC9s2kQlwJXFmPUcDUpe+PLLL5tjx46ZSZMm9VwQfHkRI82Ya4x0x0hzaF7XCnB5p5o0QT\/60Y9muW15hwh1HTIkgPOFq+r90qarzjPfHonX1TlXK8Dh9TYfnDwYKAsDKfveJUwkAVx1QfDtkTadL+eq90u8rs6z2gGOIMdyyLb0lKYDfRPAVRcE3x5p0\/lyrnq\/xOvqPGsE4KqTUW+PBHD18rNotLTpEq\/LOBBSRhLAla1OD78PKQi+04yR5tCO78RrXw5U75cArjrPGusRI1jESHMCuMZE2DpwSBlJANfbtS58W0hB8GVDjDQngPNdbb9+IWUkAZzfmjXSK6Qg+E4oRpoTwPmutl+\/kDKSAM5vzRrpFVIQfCcUI80J4HxX269fSBlJAOe3Zo30CikIvhOKkeYEcL6r7dcvpIwkgPNbs0Z6hRQE3wnFSHMCON\/V9usXUkYSwPmtWSO9QgqC74RipDkBnO9q+\/ULKSMJ4PzWrJFeIQXBd0Ix0pwAzne1\/fqFlJEEcH5r1kivkILgO6EYaY4N4J499bLZ+cNj5js\/PW1+cfJMVlNt8aUTzZo\/vMB32XraL6SMJIDr6VIXvyykIPiyIUaaYwI4gNundx4w773wbLNi\/qSsnNZvR59j9jz9gtn5w+Pm7qsuyr5r8xNSRhLAtUgyQgqCLxtipLkJgJNa1nMvvJyxs1sti+B2z+KLzFvGjxlSww7ff\/SvnzBPfvbdvsvXk34hZSQBXE+W2O0lIQXBjcKhrWKkuQ6A04CGvwFCBBt+342Whb4EyjyadRvfdWyyX0gZSQDX5MpWHDukIFQktdM8RpqrApxNOyPwLL50UmZCwh\/23Z8NNRu70bIW3vOE2fvpi0t5rdv5rmVT\/ULKSAK4plbVY9yQguBBbtYlRpol3fRnwYFvMy2lDwwgJv+G9vSe3z\/bvPfCczJzFI8N0Hy1rHd86XuDzM88XieAy5feBHC+O7uBfjGCRYw0E+Ae\/8lzZvme4+bor1\/NgAoAB4DCA3MTgLbjB8cMfWD4XIIV2gKETv3lHwySBhug+YAQxn74UxdntOT9mBBwpabXgGh2NWRIGUkA19XS1ds5pCD4ziRGmjHXn\/\/qTOag1yEXNEc3\/OPhDshRO0M\/DVQAIQChbGNr5wNwG\/7xF+Yt48d2xrbxGmD67KmXWh0yElJGEsD57uwG+oUUBN\/pxEgzNbHb\/\/5QpiG99c3jhkyf2hm0Nwle2mzE31PPGTPIV6YBrhsta\/xf\/O+MRoSCaF7THJZanu86NtkvpIwkgGtyZSuOHVIQKpLaaR4jzQSgBReMMtddNiP3ikYbeGmzEVoWtCgZqqEBrRstiyAGkJVxcI\/\/8mWDd7cd3PJMa195q9ovAVxVjjXYPkawiJFmLCGAas+fTCy8gxZt8Ejw0mYjNT1qWdQOaTbWoWXRbH7kx\/0Gt9uffKn7GLsGxXjI0CFlJAFcL1e65F0hBcGXDTHSTIC7Z+EEc8ms\/NvWbdoZ+kqzEdrZd376gvnuz05npizCRuDbQ4YBDi3q1LJi5XVIuhsFuLyLoNO1gXY4CSkIIwXg5CHC5N8bVZjXCfBCjJvUzsAnaTaiDb7HZ9fvOpCxET45gFu3mQx6TWKUj2FtohLI1q1bZ6688spsvcoudi77Pl387AtFzfSLadPJGDZwAyelWxZdmIWJ6IwDmp4AKWpnTG6XWQoAMzxNAFoCuO5ltjEN7tChQ+buu+82v\/71r83ll1+eAZxNozt16pRZuXKlWbt2rZkyZYrp6+sz8+bN6wCi\/B7TXb16tdm4caOZMWNGBzB37txp1q9fb8aOHdv5bMmSJWbHjh1m7ty53XOpRyPEBBZkSSw02\/I6J6\/9XhYKIk1LaGMANGhu+A5\/D\/jVBqp59ArMbCIXC6\/bBMyNAByA7PbbbzeLFi0yDzzwQAewAFbLli0za9as6QCPBL0FCxYUfj9t2jQDDW7btm1m\/PjxGR8BpDbQSwDXG1SOZdMx+BYBvQQrABkffM6\/GVjbthPKWHg97AEOZua+ffvMDTfcMEgjk9oYNbDMVNiwwUyfPt0A4KjN2b4HwGltzTYmb7ZfsWKFmTNnjpk4cWL2X9sfCPDx48fNeeed19FGE831cGDRtgNmy6IZmWY2d\/q4LOQCvP7Xf\/vvzZ6nT5st+46bOdPGZabmoosntDJwNkb5wOqB7pMnT5qpU\/MPdOpZ5aGj1K7BAXBuu+02c8stt2SbVJqcvQY4Tnfp0qXm6quvboqHtY37yiuvZIJw7rnnmtGjR9c2bpMDxULzwgePmElvHGVu\/dAEg8MFTTf8cEjbQpv7rmjnj2EsvNbyBrrx36xZs3JjDpuS0doBDtrY\/PnzMxNU+9x6baJu2rTJnH\/++dFocODXiRMnMnrHjBlwXrf9iYXmuZufMCs\/OMUsuvjcjKU2unc\/cdL8zf5+s3vZRa1keyy81swD3f39\/fFrcASwp556aoiALF++fIjJikbpkOE1VsXoY4mFZuSCLnnXpNK8TiTXtzVxPRZeD3sfHCdoOzUtCwMp+z6FibRLuYhl0yErASepZXmdtrzStnA8Fl6PaIDD5FOgr33LxCjAsdAMgEN2AYJx8\/I68T0yD5IGVy+kh5SR2n1w9bLGbzSeoqY4OD\/+VekVUnir0MkcUoaJ2PI6u0mKr0KLb9tYeD1iNDjfhey2XwK4bjno3j+mTRd76aGYeC0lKCTdSYNz38uNtwwpCL6Ti4lm19JDTdyQ5cvftgBFN\/SHlJEEcN2sXM19QwqC71Rio7ms9JC+gwF8qeOGrCr8zQNY1oObNGlSNGFEmHdIGUkAV0XyGm4bUhB8pxYjzXmbTuerap50c0OWK3\/LAPazHzjbfOSdFySAc2RoAjhHRvWiWYxgESPNeQDncvuVSxtfWSkD2INHT5sr7nva\/EvfpQngHJmcAM6RUb1oFiNYxEhzHsC5Xgzj2q6qzJSBJ3h937cOZal8+pKbqu\/qZfuQMpIArpcrXfKukILgy4YYac4DOH2hTB5PmgK4snHJ6xv+5+nWxurZeBZSRhLA+e7sBvqFFATf6cRIcxHAlZVI6uaGrDIelwEsef2ph\/vNP6y4tGy41nwfUkZyAU7mlS5cuDArKHnXXXdlZY1Ynbc1HFSEpDi43q1MSOHtZpY2uvWFMrbxmwwG1jd26feDZlxWvf47Z5IG57j4VoADQKxatcps377d7N+\/3zz66KMZwCG3FAUrr7rqqlaDXAK4\/NWvO8arW4Crmx5Huc8NXZDBwHqsOm7IKqKvDGDpg3vp9eNaWa8ub27dyojrmtraDQE4nSCPvFECHOq74e9du3YNqqrbDQFN9E0AZ+dqWQgCcjFxwXCVpxvhbYIeV9rz6CaIIaUL\/48CmHjg1OcFM6z46\/quKu2KAPbnvzqT3diVd1l1lff0sm03MtItnUMATtds0wCnq310S0AT\/RPADeVqWQiCb4yXr\/A2RY+rPBUBHO9jAI14AHIsae7zI+BKE9rJbAt5yQ3Kqd\/+94fM1j+aWHjVYZV39aqtr4zUQV9lDQ7lio4ePTrokpc6CKlzjARwQ7lZFoKAHi5t9Mi+wuvyLpc2kp4q5q6N7tCgy7nIeRBgZQWUlMngjhaVfHAPP\/ywuemmm1p\/W1UCuKECwBCEMhAoC1WoC+Bc3+Parqq5S4D77ehzzJ6nX8huzJLmKLUnPd+qoOu+Fctb+v6YlI\/cbIuQdDudonL6kydPzg4e5IUwzbLGb\/QEcK\/xjYCGO0DhO8Lf+PfJz747a6TzLKvWQ\/MV3rKQCM7ABeB8NC+eSH7pkdPmA28buGQG77pn8UXZrVv6nlQpiS40+UlucS9fXjdBS5UxQ9Kd4uCqrFTDbesWBKnVYMOiWi028nd\/9oL1omM4sKtWtPWluSwkguALf1hZAUoXrUq3gcN++f942mz907ebt755XLayEnSLfJIJ4KptBF8ZqfYWe+vcQwbbvQp6iLYWlEwa3IBmBnCARgKNjY5z6bgGoFGTw9pCe8OTZ57ZRKhIeIvM4bKQCLxLxpwVjeUKOLIdxsYNZtddNqOT16lB1wacTQb6lm3okEBRRlvR9yHpzvXB4eLkdevWDYp3k8Axc+bM1sbEJYAbemCAzY2TON5JQADBv3BgU2OpS4Nz8Ykx5MEWmiJjzkAjABrtJEDTlETbU3\/5B6V7UAIc\/v+uD59tpA8O\/OFN93yPBs8mA33LJhASKMpoiwbgGAcHfxtuoNePDBvBoQNi5LZs2dLN\/GvvmwDOZP4kadpROwGoANC4gfE5\/h8aFcDPxSSk+cgb4n9x8owZNWpUZ1xXnxjep+lBXwAN6SG4URPVwoL2NC2L4tO05oU+9yycYKQPDmMjDg0hIThw0Hc0SNBtMhYub0MkgKsOFaVxcHpIGQd38ODB7Fb6PXv2VH9zgz0SwA32J4HVBLgBze1YdmqIBxuZgFdkfmkTkYcV3191sTl27FhHE4KGA4B474XnFFa8oPnHOxJs9GgtM09kqpq75Me5Y80gHxyBG6DLuDdotABXCbohwA20JYCrDhqlcXBlGhyyGhLAVWe8rUedAqz9STYQ0ICWZ35Jc3PxpZMyLU8eVsgijNSoqpqMeRx09a9VTbHCHN74upfNrR+7aEhtNXmyDICTPwL1rLTfKHXKhx8Ffr1C0u3tg5s9e7bp6+szeaasHyvq6ZU0uIEDg7eMHztIi9IgoJ349IlJDUWbm9rxbivCSLO3rGaZC3hVCSfRQKTNXTkv+iQfuu7tWZiIzfT1OVWuR4Lto4QEim7mFZLuSnFwALVt27aZ8ePHZ6YpgIR\/SwYQYPCZ7MM26V7U3giwBjT6kAA80MSwgeFnAjDQ56XNLw1oGpSYAC6LMAKUyg4rXE8jq4STMIYtz9yVXKcP7tN7+wf5JDUouvokuwEA174hgcKVxqYtk6p01B4HJyuRICC4LJe16vfpZnv3JZaAxkMFbH5cfozHxfyyHVbI0BJuOlmEEWAJYJTtNNWup5E+\/jUXDhHgAMzMZEA\/V5+kyzvqbpMArjpHawc4CUAg59ChQ2b16tVm48aNZsqUKZlZO2\/evE74CZL7V65cadauXVv6PcbjWMymAKDu3LlzUG5sMlFfEwR5OKA3sIu4aBNRa1TcdLIII\/1wMiRFvkuHgPDQIy9Vqqp\/zWVeAM6x\/\/fMoDg4XxB2eV8dbRLAVeeiFeBksUvbkDazM+\/VUkNjPTmEn8ydOzfrIsszLViwIIuty\/t+2rRpmWkszWIJoBL0EMfX1kDkPF61UYDLDiuY8iSLMEI7+85PX8hOHmVISl4ISF58Gyt32DTRIv+ayzYA3ZPXfs+U+eDKKvy6vKuuNm2UD5e5haTbCnCyYghi3Q4fPpyBDsDkmmuuMZs3b+4AVN4EqUXJ\/FWprcl8VrwPlYIBcNTmbN8D4LS2ZhuT716xYoWZM2eOmThxYvZf2x8IwvHjx815551nUHuv6nP016+a3U+cHJI4jvs0fZ87v\/lcFvy66OJzO0MQGOZOH5eFLmz\/9i\/Mb\/7NOLPyg1MNaIBvD8CBh9oZ4uSgoS26eCDvE+3g39qyaEY2vn4AYH\/8wAGDMBQ8UhPVY\/nMDXTvP3jE\/MU\/vZiBMHkEuh575kxWmghzCBUSYptTkXw0sfY+fM2jG1kjU6dO7fltYLlxcKzaq01A7TMrY4KsL4fshyIAqxvgSNvSpUvN1VdfXUZq8O9feeWVLH0IfqHRo0dXogcCfus\/95tLzh9jls8ZKFqJz\/YeOGO+\/uMz5tYPTci+c3nY7\/FfvmyOvfhqNs517zp70LjL9xw3H3nbOPPhmWPMdQ8dz8b\/1W+Mue8Hp7OaZZN\/b1Thq0AXnoUXDeSB2h6XNi7zsbUhr5HJ8E8\/\/63BXPFgvpgXeeg7fhP98uSjzrVvim7QPmvWrPYAHM1EaG133HGHufPOO7PTU\/23C0Pol7v22msLTdC6TdRNmzaZ888\/PxoNDub6iRMnMnrHjHEDI2o3K3YfygJSbcBCrQr3aZY90JQwFkInpFbzzvU\/zMb+q49fmAXxfv\/wGfPnf3vIvPrqq+bNbzDm1L8OZDK4aot\/tPVps2f5gJZX9CzadsDsXnZRWbPK3\/vyuvKLauxgo5nrVcfa10jqoKFAd39\/fzs0OF2yXJuARQCn+3KWBLgbbrghHTIUSJGvr8KnmoaNjKIUK5qIKLvEVKZuijBWiW8rqybiszF9ee3zrrr62Giua+3rotE2TkheW31w+t4F+shwm1aZiapLmuuwEf19ChN5TSR8BcElYBZvyWun07DQVh4OUEtkcjsp7hbgyhz4rrFyPpvTl9c+76qrj43mbte+LtqKxgnJ69wwERnuIU9VXU5QZSCvrUhmCvS1i4OvIFTRhmQwLMMyCGiIkYO2JFOVcJLJcks87dSFIWWqluuGaSq+zfX9vrx2Hb+Jdjaaq6x9E5qwyzxD8joDOAlgsYVW2Bg8EuLgpNZlK\/NDvuh2\/JxmJr7Hw2q\/MoeU4RlMOOeJotQabKlaLkKPNk3Et7m+O+Smc6VRt8sDuJCasMtcQvJ6CMBpgnnps0\/Ygsvkm2gzHAEur5oHsgVYqBK8lKW2ZZI88lIRlsGHYEWA4+cYT4ZG6CKY0k\/HEJAigC1a3ybi2+T7ikxvbrqqdzI0Ia+uY9qAIrQm7EJ7cICzEckDg7179w75uu1a3nADOAlUtmoeMCNlojz\/nxV9sYAwZaipMReV5g2ACocHeGDCyiR5aGv8XGYcgCYAIcslIVULJmzRXQY2Oes20yJvg0me2Ypkbv7Y9CyTQdeD0+Z51XtiXTa8b5s8oAipCbvMpZUAl0d4UZK9y2R70SZ2gNNaBTYdQGfAf3Y8YyHrqPFvAg7aQVvb8YNjGeDg\/6WGJ80ZWfWD6VUEs2dPvZQFDEM7IzAOvPN4BmwAVd7tAB\/ctsfPmH9YcWmnMnBRHmrTMlB0Gox3U3O01YMjbWwTch6aT3lA0bQm3O16tRrgZGUQTDQGkzVmgHv8J88ZBNEids3mJ8MasPIunf5MXMd3+vYsnobaShjpqh8Yh2Ysb95CG4In\/gVNS941qaPl0Qd3wbnjOhWEXUIXut00Rf1d3g\/Qf+GF09Z6cBzbZZwm5+EKcATtvEKmvaTR9q7WAZw85QTBy5cvt5YvD824vPfHCnC46QnmpSz\/LU8saUYCZHQJb3nvKcbAI7UPW9khXfWDmgC1M2pwvKcA5jHGkQcREN5b\/+6AOeec1+5LyH4IVcn0XsqKy7vRBrTjZLEoqNplrF7NLSRQdDPHkHR3wkRgem7durUzD33hTDcT7HXf2ACu6ESUfjK0ISDxEABAh88R7oF\/1\/zh9CzPk5oYAY4+Npd+eIe8M5W+O1YG0ZogQVlqcKEBziV0Am1goiaAa353Bgc4hokw\/7T5KTf7hlAAVyVgVt6kDm7AlMRnCy4YZf7DWyaYVX834PSneSjbANAQugHAgo8MoEafG+9EwL8APIxJ5z9NTPYDQOKhX43fyzsIaBLzchjer8o2SEpH7imc9fDBkeaQhSJdimS6ABx9eaHix6qYqM3uqO5GDw5wIF+bpTH42tpkopad2jFgFkBBIKHmhXkwDg35nvC\/4W9oTdiINBEHfG0DcWs87dQOZgAa3sHx2A6aGf1zANP3\/P45nZNXHBZI81cWfdSX1dAvRcBF7in8hrpcEg4pqtyv2t0WGugtT0A5ns7I4OdFdzKwjWtRzjpoLxpD\/nDqG8yafncd47cC4ORE9MGCLRuhjok3NUYTGlyRduZ6asdNiH\/1AYKNFwApaGq8zxR\/E\/AIMPSLQVvjiSk2NQALn2GT8mRVx8ERLAmGEjhJj46z4mkrTVYI733fOmReev24DNAIuGXBp3Wvvf6BQegEwB1Aq0NX0PbDd\/1N8lUzAAAW70lEQVQw+yFpez04OS\/8mOgbzFgzr25+1jle6wBOTo414I4ePdr5eKTFwZVpZ0XX5EmtQgIK\/FxwYDNdit+hLNGfvf+CrIy2TavifQMAk7zS4\/TB4TCA75enqwRY\/MsgXX6G9tokk3FWupgl6sTxbgeUGsq726HODaPH4vrwpi\/b4QhjA3n939\/82UVZaaqyOxlC1oPTP5waKPhj0qZQFts6txrgNMEjLQ7ORTvjyaJNy6OmRZ+bjB+jfw3aDh469KlVUFuiucpDBrTNu4GdQo82+hQVf0sa0UbfRGULGpVmMAAO9OIzACzKJU164yhz8qWhCfq+oFakLdvGpClJf6MO7OUPheSZLZPBxg\/fOdTRT4ep2ICibaEs0QBcXiZDDOZqnSaqiwABmHhIwNg0AiMd+lJ7k5kEMnNAxpzJ+DUIDTatjFEjcEqzkDfUM7NBpl1pXxoBF3Tx9JU0267fYyURmMwSCGg2TZo0yamGXRl4lWnLNpNMZlvkVQfWVwCG1Cpcwc92gxlMVM3rNoWytBLgiu5giC0GDgyuCnBFm85FeGQoBTeY1ipYR43VPHhgoAEOGhF8QzQZZSaBNCNtVUEIihgb2h4Aj2lXzGaQWg7NTdDM09cBLWdSp9R4mVZTBSjKwIunwTrGDzSgL+ZAfkiAtwUx641GnlCrrUK3KyDV3U6Hu+TR7CKjddNWZbyQvB6UbA+fxPbt2428D6HKRNrStgrAlW06fF92Szs0K2w8aRJSq6BfiD4wbkweDuBvOuwxzr6f9GeOb\/jg5KmpTNVCO\/ah+UgzV8a8ae0MG0afvrKfjrHLO33Ua+wqvC6mPrQsCcp8l1wjHKQQ6KlV4ntdJEDTyTHoX3SlO6RM591gJjU4Pa+Q9Oa9OySva782sA0MdgU4l03HX9EiZzNvSeepnXRyv7YZB3JI5ckefXAEPfqKtiy6MNPibGlXPBGE\/wsgRJ8YxmAGA08wpQ8PByHU1PL68bRV5rnKm61s1\/u5mqgupj74KNPAqLmxaICtXBPnqIsEDAcNTp9g5\/ngQoTkVNnnCeCqcMuhrSvAuWw6l3I0zOnkiSS0CZqt3KQMxdBpTwQ3GV+Gz2QcnAwpYegI\/GQyk0GabJJFNL9lqfGiftLckdohQCbvej+XgpcuZpTOjcU8bGtku4watBbdw4qxMe+YNDjMXx765J2i9jokx2ELDmqSAK4qx0raFwGc9Le51jErK0fD2LSiHE4G+JJ0bDbpT+LnCPSF0\/\/Obx4ZksUAsxbj6LAAF6C2+alcwIO+q7xN5Frw0jV9CnzQpr4MW7GZZPgR4qFJ3j2s9EXyhDXkpqsi7vIEW8bB4RawECE5VWhn25C8HlEmqva30cdBX05e0CTj1WyajwxBkFoUT0SpVUAYB8B1wFSVwbUUBHyG\/EgIL80xDSwuoJSnwfG9BAGtCdnAA+9DGlheuhIDfXHVoawjpzeCS\/oUgUq+SwNjXnaBDOxlrCBPg\/nDIHkZctNVBQn+KD\/y4\/4sLKfOkJyqtPi0D8nrEQNw3LxlwaAy0VxWrJWaF\/6f2h\/9aPhX+9dkJgE2JkIsZIAux3ztpPNwdndpmQDbTDRbsKcEdJp72OTSOS+DgWV+rARB9C0COIQuoOBlUc6mi6nPAGVpakpglCaz9IlynrbwFgb26h+KkJvOByTQJ0aaQ9M9YgDOFgzK0AlsEJu5SKc72skAXRnOgAWklsGEdHlCijEwNsCNWQsyDk76hTDOnj+ZOCTOSW8IG8DpDawPUOiMl6evBI8B8HktJWwADI91TnEljZoWbrpPPdzfSbbP28Blpj4zIniAwri+Ac1zoHCnzVTm2jYV3uILSHX3SwBXnaMjBuDygkGx6QZSrQaq1eIBGMkKHPKEjloENh9PG3UalF4GaHIsNS4rdWi\/UBbGsXCCuWTW1Nyg2TwfFACA9Ng0MZ1iRfCQOas2kBzw3Q2UYbI92HQ62T5PDKU\/SWYbaC1L+kmpLTNMRo+dp9WVbYUYwSJGmpMGVyaJHt\/bDhnoZNcgQBNTJqTLxHV8r+PgAJYAQAbN0vyTJYyYTSAPE+SFyTa\/EDQU3BNw3WUzcgGuyAdFoAZ46Kv9QKOMlZOZDEXgIWPn8gBOJtuXLZcGL21W2vq7AmPZu+X3MYJFjDQPS4Br472o2KgAHZg\/2DBF1TxkzqLt9FFnLuhYLG5ImqW8y4B+siK\/0OS136tc4UL6oHgQIk+IqZlqPx212jLfFU1Z2wUsLHgJ8Hzrm8dVwZhKbX2AsegFMYJFjDQPO4ADuO3atcts27bNjB8\/PkubQoJ+3t+9utneluepy4HzZFNqbLbYLALcaxVzB04aJVAwvIJBtTR9izQWmnsuFS7khpcXOGuAowZpq3jCucm0L9CpaeQpsi0EgwUvi8zqSkjWo8YxgkWMNA8rgGOC\/rx588yVV16ZiSo\/W7x4sZk9e7bp6+sz8nvkwa5cudKsXbvWTJkypfB7jLd69WqzcePGTjoZAHTnzp1m\/fr1hne35pmoAAWYn3h0SR0WgMR3Mu2HKUw8fZQ3TdE3RZMVY1BDlIG9BMK8YFcJVihoKHNRCTjMRJCmJd7BsktoJ6\/tQxFL+OUASlKj1CEYZSlZ8rDCdqmJayZDj3DL+TUxgkWMNA8rgLNJFxP516xZY2bOnGmWLVuWXWAzd+7cQQAI0FuwYEHh99OmTRukDWIA1Kuzgd6SJUvMihUrzKV\/8J\/Mt4+9flBeJ4AB93nO3fyEWfnBKYOCarGhkSoFsNr9xMkhV+exH9rNmTbOoAYa\/h\/5owDDudPHmT9999QsIBcmKv7e8\/Rp81cfn5F9v2f52wexCWCGLAG0A1gcP37cHH7535m+rx8Zwk6a1vLEl0CKez6R5oQ2f\/zAgWx+NHcxNuaCA4V\/6RsoK473vnP9D7O5oqZb3oN+GHPlB6dam2DTgebzzjuv8wPjjDIBG8ZId4w0E+CQ5z51av7hWVOi0PgpqjRBoc1RW5MJ\/TBhp0+fngFc0fcAOK2tSQ2QY1KD+39vmGDOvPdGg3\/zHmQOfORt48w7p4wx1z103LBkOOLR8B\/+vu8HpztaFb9HYcqv\/\/g1bQttl885O2uH9rd+aILZ+thpc98VE7PPcBUg6qbhbz74\/NZ\/7s\/aYtxXXnnF\/OiZX5l7nnqdeddbxpmFF43L+sn2+Iy07T1wJnsXnr1Lp2RjZP9\/4Ez2b0bTnuPZ\/NCP70IgMfrhLoWFDx7JaEJb\/ZButOPYug1ohvAi0Hf06NFNyWnt48ZId4w0Y+FAN\/6bNWuWU0mtOhe7UYADuH3lK1\/pVCixgREm0wTAXfWJGzJwg9lLPxhLeZOBBKsV8ydmWha\/h2YGP9SiiyeYLfuOZ1rO1HPGmj\/\/20NZV3nyir\/hbwN4QZvDGNDE4JPD39R87vzmc1lfqQmhzVlnjepoUD\/\/1Yvm+l0\/Nv\/tv7y9k8mAfrufGKgwggda19E73j0I9Gya2KJtB8zuZRdl4AotTOa6kkYMgu+hbWKuMnTjOz99wdz1f45n780DN\/THj9aJEyfMxIkTey683WyEGOmOkWbKSH9\/\/\/DS4DS4YaLSXG3aRP143z1mwoc+1QkMhUOdRSlp1ulsBJ520k\/HckUyvENey8egWVYTsZUw4rt0wUXwQ\/vk8D5oQzJMhCed9J3lneoCdGUGgE6a18nmEhy6OaFMfqFuYLZa38TravxC60Y0uLyy5rZDiKYOGT7610+aLZ\/5WCc\/kqeoMmiXeZZMn8JG50MHfl6SuDxZZBoWTx9lCSMZEqKv0tNjY8y7Pnz2oEwGfYprO9WVpcyZJcESQ3y\/DiquLir2HmnT1cXJ8nESr8t5pFvUDnA6TES\/UIeNNBUm8pH\/\/pz5+n+d2jnMsIWJgDZkMujEd5xMlhVTtIWYYDyGaeD\/ZbiFLQNBJ6DbUrU0oOnb6GkyMyCXt0gxBo+Ax0tX6r5EJW266pvOt0fidXXO1QpwRaXP161b1wkdkYHACB1hjBzJL\/pe3xVhK6kOEAXAwWSb9x8vzIZlKIe+qYr+NLShD45hIjqAl\/RpsIK2BOAougfUloGgE9BtqVo0raV\/TAfeUhMt0yDrBjfwI2266pvOt0fidXXO1Qpw1V\/fTA8C3FeWvc9qokLL0fmaTJ0CRbJstq3ChQQrxphpH5icWVG+pExA16laBFiMRf+azillYv9AqtnA3Qr6YpgmL2BOm64ZGbaNmnhdndfDFuCu+MIu8\/Lb\/nMHGGSqVl46E1K5eLGJdtjr2mJoi89Y4QKsZzWRokRyvUQyzxKnr4hdw6ntqFFndcYG7Uwfo38P\/WRQMTXQJsEsbbrqG6zOHgngqnNz2AIcAn1Pf2xbBxjIGp6M8m8Ah0xn4q1SEqxg3hZdtCxNV1u0fxno8BQTBQ0Bmgjd4CEHxoa2yfsWQCseeWFzyJLVadNV33S+PRKvq3NuWAPchnseMMv\/1+8yrtgq6PJzmHdM1aL\/DaBCDUmylSEjTWhMFODfjj4nu1VLV6Yl2OFflyoc1cWheo+06arzzLdH4nV1zg1rgNuxY4eZPPMdg05ECWoAMpYRhzbENCikOwHEeMkK8jkR9MrDCLSFeTrg7xooCplX6rzqcsQowDHSjHWJke4YaQ7N62EPcAwo1veUUjsCYDHhnGYgnPSIl8ND\/5e8ik9e\/EIfmq1keAK4qhzoXfsYwSJGmhPANSDTRQUv9cUo0skPbQ2amyx4yUKYsp+++MV2EYzPtGIU4BhpDr3pfGQjVppD0z1iNDgdVCuFjE5+HkDIgpd5JY705y73fpYJdoxgESPNoTddmRzkfZ94XZ1zIwrgZHybjVWMedMFL23mZwK4AQ6mTVd90\/n2SLyuzrkRBXBlwbiyUi+j\/m2an85ksKVhVV+KOMEibTqflfbrk3hdnW8jBuB4RSC0NFvpbXzPskpS07Pd56nTrvIugqm6HDEKcIw0x6p5Jl5X3VENVROpTka9PWyHDHiD6+3nOtdTplPptKuiNKyqs4pRgGOkOQFcVcnsrn1IGRkxGhyWSJ6Ylt3LKTMZZL+8Ukh1JLKHFARfEY6R5gRwvqvt1y+kjIwogCPIuaRT2YpA5pVC8lv2ob1CCoLvHGKkOQGc72r79QspIyMO4PyWqDe9QgqC7wxjpDkBnO9q+\/ULKSMJ4PzWrJFeIQXBd0Ix0pwAzne1\/fqFlJEEcH5r1kivkILgO6EYaU4A57vafv1CykgCOL81a6RXSEHwnVCMNCeA811tv34hZSQBnN+aNdIrpCD4TihGmhPA+a62X7+QMpIAzm\/NGukVUhB8JxQjzQngfFfbr19IGUkA57dmjfQKKQi+E4qR5gRwvqvt1y+kjCSA81uzRnqFFATfCcVIcwI439X26xdSRhoFOKRM7dy506xfv96MHTu2w51eXBuIOxlQ0ZcFL\/2Wpre9QgqC70xjpDkBnO9q+\/ULKSONARzzQRcuXDgI4Hp18XMCOD9hrNorpPBWpVW2j5HuGGkO\/WNSO8Dx8ueTJ0+aD3zgA+bFF1\/sABwvbZ43b17nEmi0X7lypVm7dq2ZMmWK6evrM3nfg1mrV682GzduNDNmzMjk1aYl5iXbd7MhetH38OHD5sEHHzRLly4106dP78Uru35HjDRj0jHSHSPNoXndCMA9+eST5rLLLjMwRR999NEOwBH81qxZ0zEdJegtWLDALFu2zOR9P23aNLNhwwazbds2M378+GxzHjp0yAp6MWpwMQJzjDTzhzE2GUm8rv57XDvASRJsAEdtjRoY2gO0oLEA4Iq+B8Bpn57UAKVWB+FdsWKFmTNnTnWuBOrxy1\/+0tx4441R0R0jzVjeGOmOkWbJ6xA+8WEJcEeOHMmA4rHHHgsEVem1iQOJA5IDUDQ2bdqUuaF6+fQc4IpM0LpMVDAQIIf\/0pM4kDgQngMAtl6DG2bdU4Dr1SFD+OVMFCQOJA60gQM9BTg6d+VBgfbTlYWRoC8eHETYALMNTE00JA4kDrSDAz0HOEy76UDfdrA2UZE4kDgQmgONAlzoyaX3Jw4kDoxsDiSAG9nrn2afODCsOTDsAI5+ub1792YLt3z58sxf18aHtC5evHhQzmxb58BA7aeeesrK2zbSrWlat25dJ4sGk2gjzVpWtV+6rXQj6P6aa64xR48e7UxB7r8QvB52ABfLIYRcbB0A2cY5ENyuuuqqDCBsBzxto5s0Tp48OfuRs2XStI1mDW6kGZ\/LDJ420g3fOh7Ih+0JQfOwAri8tC1bRZOQGh0PWVCI4Nlnnx2UmtbWOdi0CJkHjJhDlzzhXvLdxku5ydrKa8kj0gteE+DaSjdonT9\/vrWCTyiahxXA2TahjbG93GS2d33rW98y73jHO7KvdOBzLHMA7TLEB2arS55wSN5rDa7tvAZ9+\/bty0BD8raNdENbvv32282PfvQjY3NhhKJ52AGcS65qyE0m320zmWzVUWz5tqHnYAOLtvJeugOkT6jNvCZgoLLM888\/PwTg2sbrPBcG3QOheJ0ALiBSxApwpBvFRHmAE0qAqy6f1jrbBhScj\/Rnae0nFl5L6wkgHYLXww7g2m4muWhwbZ6DDdwwp1AmSFWA05uujbwGjagLePPNN2eVsG0A10a6bQckrA6ktVC07YX7aFgBXChHZtVNxvY2Da7Nc2AYwGc+85khJ2VtpLsMdLEObTsYoW\/zpptuGiJWMPe2b9+efd42uvN4fccdd5g777wzM7ND0DysAA4LH+Iouk6Aa+sctI+lLWEARbzXoSw6bKStvNZzsoFH2+S8rWFEww7gQgQT1g1wbZyDzB+W8509e3YnfKGNdMcYnOwCcInXbrtu2AGc27RTq8SBxIGRwIEEcCNhldMcEwdGKAcSwI3QhU\/TThwYCRxIADcSVjnNMXFghHIgAdwIXfg07cSBkcCBBHAjYZUbmCPCFLZu3Tpo5BDXwtmmZqt0glNgXDuJ7Iv0jBwOJIAbOWtdy0wJHhhs\/fr1WaQ9nqIg4Fpe3MUgpG3z5s0J4LrgY4xdE8DFuGoBaS5Kr4GWtGvXrkF1ywKS2nl1Arg2rEIYGhLAheF7tG9FVP2qVauylKEZM2aUzkOaskw1Yj9G6F977bXm+uuv74ylTV1dKRZ19Kg9stLK+9\/\/fvPFL37R4B333nuvuf\/++828efMys3TJkiWdsVFNBA+qzkoN1CVTo3SyqUHrOJAArnVL0m6CZGaALv+tKQe4yUKN+H+ADQGMf0vAyuvDd2kTGX+jph4eFoTUPjitwdlAuipwt3uVEnXkQAK4JAuVOaDTnzCATNmSPjnt9wKAUXtCYUStDUowwph9fX2ZVibv1ZBtZs6cmQEcS6nj3WUAZ9PWJF30K1ZmTOrQOg4kgGvdksRFELUwUs2Cknn+OJk4fvDgQWsVYFxcAmC0gZcEMAAfzFtdFbkM4DCGBDRqgRIk41qFRG0eBxLAJdmojQMADdxmBv\/c\/v37ja3kj9T2XAEO2psM75BVQXwBTteFq+JXrI1haaDGOZAArnEWj5wXSNPxmWeeKT1Rzash5qrB4RBhwYIFXhqc1PIOHz485NBh5Kza8J5pArjhvb61z67IV+WiFblcVEOAq+KDk1qei4kKxoCWb3zjGxmPLr\/88tzr7mpnYhqwZxxIANczVg+PF1FLw8mnvlBbFmGkn0tfd0fwgslZpsGxDU5ey05RfQCOcwGtrmEvw2MVR84sEsCNnLWubaa62CIHtqVq6ZQu2cYF4DC2joOTN2PZyr7nXUqN1DIZkpKXlVEbo9JAwTmQAC74EiQCQnEgBfeG4nzv3psArne8Tm9qGQdsGmTLSEzkdMmBBHBdMjB1j48DyfcW35r5Uvz\/AYLDoclTT0SOAAAAAElFTkSuQmCC","height":151,"width":250}}
%---
%[output:0d43b454]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"Firm","rows":5,"type":"double","value":[["1877"],["2375"],["2450"],["2037"],["3893"]]}}
%---
%[output:13e513cc]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Wage"],"columns":1,"dataTypes":["double"],"header":"5×1 table","name":"ans","rows":5,"type":"table","value":[["1877"],["2375"],["2450"],["2037"],["3893"]]}}
%---
%[output:4a50137f]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"ans","rows":5,"type":"double","value":[["1877"],["2375"],["2450"],["2037"],["3893"]]}}
%---
%[output:40287cd8]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":5,"type":"double","value":[["1877","11"],["2375","8"],["2450","11"],["2037","7"],["3893","30"]]}}
%---
%[output:0f059c2d]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Wage","Seniority"],"columns":2,"dataTypes":["double","double"],"header":"5×2 table","name":"ans","rows":5,"type":"table","value":[["1877","11"],["2375","8"],["2450","11"],["2037","7"],["3893","30"]]}}
%---
%[output:984dc89b]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"1×9 table","name":"ans","rowNames":["P0219"],"rows":1,"type":"table","value":[["'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"]]}}
%---
%[output:4422ceed]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"2×9 table","name":"ans","rowNames":["P0219","P0476"],"rows":2,"type":"table","value":[["'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'FAVELLA'","'FELICE'","'M'","25-Sep-1991","'C'","2338","21","12","7"]]}}
%---
%[output:80e68596]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"2×9 table","name":"ans","rowNames":["P0219","P0476"],"rows":2,"type":"table","value":[["'DE SCALZI'","'DAVIDE'","'M'","03-Oct-1999","'B'","2016","19","4","2"],["'FAVELLA'","'FELICE'","'M'","25-Sep-1991","'C'","2338","21","12","7"]]}}
%---
%[output:1157ba70]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"46×9 table","name":"Womendata","rowNames":["P0211","P0214","P0215","P0217","P0220","P0225","P0228","P0231","P0232","P0249","P0250","P0252","P0255","P0257"],"rows":46,"type":"table","value":[["'BASILICO'","'TIZIANA'","'F'","16-Jun-1991","'A'","1877","27","10","11"],["'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'MAROVINO'","'ELISABETTA'","'F'","14-Oct-1966","'A'","1893","29","6","12"],["'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'SOFFIETTI'","'MARINA ANGELA'","'F'","12-Jun-1975","'B'","2226","47","14","11"],["'SURAGNI'","'CRISTINA'","'F'","30-May-1987","'A'","2103","12","8","17"],["'GRILLO'","'ROBERTA'","'F'","30-Jun-1997","'A'","1562","17","4","5"],["'RAVETTI'","'ENRICA'","'F'","12-Aug-1967","'C'","4185","18","6","31"],["'FERRERO'","'DANIELA'","'F'","13-Sep-1974","'A'","2287","28","6","26"],["'RIVOIRA'","'MARILENA'","'F'","03-Oct-1996","'B'","1760","18","6","3"],["'ROSSI'","'MARIA PAOLA'","'F'","19-Sep-1968","'C'","3988","29","8","30"],["'CARPINELLO'","'NADIA'","'F'","18-Jun-1985","'B'","2303","25","6","16"],["'MARIN'","'ELENA'","'F'","10-Jun-1973","'C'","2936","15","4","24"]]}}
%---
%[output:66911084]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"15×9 table","name":"ans","rowNames":["P0214","P0220","P0225","P0250","P0255","P0275","P0285","P0287","P0303","P0305","P0307","P0317","P0336","P0340"],"rows":15,"type":"table","value":[["'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'SOFFIETTI'","'MARINA ANGELA'","'F'","12-Jun-1975","'B'","2226","47","14","11"],["'RIVOIRA'","'MARILENA'","'F'","03-Oct-1996","'B'","1760","18","6","3"],["'CARPINELLO'","'NADIA'","'F'","18-Jun-1985","'B'","2303","25","6","16"],["'DI TONNO'","'GIULIA AGNESE'","'F'","30-Apr-1983","'B'","2581","40","16","18"],["'PARRA SAIANI'","'PAOLA'","'F'","30-May-1994","'B'","2021","25","8","6"],["'CASETTA'","'CATIA'","'F'","21-Nov-1973","'B'","2629","24","6","19"],["'GILLIO'","'FLORIANA'","'F'","22-Sep-1985","'B'","1925","19","4","5"],["'CARLETTO'","'GERMANA'","'F'","19-Aug-1979","'B'","2259","26","8","14"],["'CARLI'","'ROSSANA'","'F'","27-Sep-1981","'B'","2653","19","6","20"],["'BARLETTA'","'ELISABETTA GIOVANNA'","'F'","05-Aug-1965","'B'","3139","20","6","31"],["'GRAZIANO'","'ANNARITA'","'F'","21-Feb-1981","'B'","1878","12","8","4"],["'CRIDA'","'ROBERTA'","'F'","07-Apr-1967","'B'","2657","19","4","29"]]}}
%---
%[output:387d77de]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"20×9 table","name":"ans","rowNames":["P0214","P0220","P0224","P0225","P0250","P0251","P0255","P0275","P0277","P0285","P0287","P0303","P0305","P0307"],"rows":20,"type":"table","value":[["'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'BARBIERI'","'LAURA'","'F'","10-Mar-1999","'B'","1635","45","16","2"],["'VELARDI'","'ALFREDO'","'M'","09-Feb-1961","'B'","4354","21","10","40"],["'SOFFIETTI'","'MARINA ANGELA'","'F'","12-Jun-1975","'B'","2226","47","14","11"],["'RIVOIRA'","'MARILENA'","'F'","03-Oct-1996","'B'","1760","18","6","3"],["'BOSSO'","'FABIO'","'M'","24-Aug-1961","'C'","4254","22","8","33"],["'CARPINELLO'","'NADIA'","'F'","18-Jun-1985","'B'","2303","25","6","16"],["'DI TONNO'","'GIULIA AGNESE'","'F'","30-Apr-1983","'B'","2581","40","16","18"],["'PATRIA'","'ALEXANDRE'","'M'","09-Aug-1967","'C'","4209","30","10","31"],["'PARRA SAIANI'","'PAOLA'","'F'","30-May-1994","'B'","2021","25","8","6"],["'CASETTA'","'CATIA'","'F'","21-Nov-1973","'B'","2629","24","6","19"],["'GILLIO'","'FLORIANA'","'F'","22-Sep-1985","'B'","1925","19","4","5"],["'CARLETTO'","'GERMANA'","'F'","19-Aug-1979","'B'","2259","26","8","14"],["'CARLI'","'ROSSANA'","'F'","27-Sep-1981","'B'","2653","19","6","20"]]}}
%---
%[output:90c7d8df]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":9,"dataTypes":["cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"12×9 table","name":"ans","rowNames":["P0222","P0301","P0314","P0315","P0317","P0324","P0326","P0330","P0338","P0407","P0470","P0513"],"rows":12,"type":"table","value":[["'RIVA'","'GIANLUCA'","'M'","08-Sep-1985","'B'","3370","26","12","16"],["'LUPARIA'","'GUALTIERO'","'M'","17-Oct-1976","'C'","3176","19","6","22"],["'ROSSO'","'PAOLO'","'M'","16-Mar-1965","'B'","3386","28","10","24"],["'ROSSO'","'MARCO'","'M'","07-Jul-1985","'B'","3262","15","4","16"],["'BARLETTA'","'ELISABETTA GIOVANNA'","'F'","05-Aug-1965","'B'","3139","20","6","31"],["'VAZIO'","'FRANCESCO'","'M'","01-Jun-1978","'C'","3094","11","6","20"],["'NEBIOLO'","'LOREDANA'","'F'","26-Jun-1966","'C'","3268","31","14","31"],["'AMERIO'","'DOMENICA'","'F'","19-Nov-1966","'C'","3363","17","8","32"],["'MICUCCI'","'MASSIMO'","'M'","03-Nov-1987","'B'","3225","29","8","15"],["'SQUILLACI'","'EDGARDO'","'M'","28-Nov-1972","'C'","3178","23","8","26"],["'CHESSA'","'SERGIO'","'M'","15-Apr-1979","'C'","3084","16","4","19"],["'LEVET'","'GIORGIO'","'M'","29-Sep-1970","'C'","3300","13","6","28"]]}}
%---
%[output:92fa9009]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"4×10 table","name":"ans","rows":4,"type":"table","value":[["'P0287'","'CASETTA'","'CATIA'","'F'","21-Nov-1973","'B'","2629","24","6","19"],["'P0472'","'CASTELLANO'","'PAOLA'","'F'","02-Mar-1993","'C'","2407","33","8","5"],["'P0508'","'CASELLA'","'LAURA'","'F'","28-Jul-1983","'C'","2675","16","8","15"],["'P0510'","'CASUCCI'","'PAOLA'","'F'","25-Apr-1995","'C'","2287","15","4","3"]]}}
%---
%[output:788984c2]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"11×10 table","name":"ans","rows":11,"type":"table","value":[["'P0225'","'SOFFIETTI'","'MARINA ANGELA'","'F'","12-Jun-1975","'B'","2226","47","14","11"],["'P0246'","'ORLANDI'","'ALBERTO LUCA NICOLA'","'M'","24-Jun-1999","'B'","1812","28","10","2"],["'P0249'","'FERRERO'","'DANIELA'","'F'","13-Sep-1974","'A'","2287","28","6","26"],["'P0252'","'ROSSI'","'MARIA PAOLA'","'F'","19-Sep-1968","'C'","3988","29","8","30"],["'P0285'","'PARRA SAIANI'","'PAOLA'","'F'","30-May-1994","'B'","2021","25","8","6"],["'P0404'","'MARCHISIO'","'MARIA ANTONELLA'","'F'","19-Sep-1972","'C'","2708","18","8","16"],["'P0468'","'RIZZITIELLO'","'ANGELA'","'F'","17-Aug-1964","'A'","2443","18","4","40"],["'P0472'","'CASTELLANO'","'PAOLA'","'F'","02-Mar-1993","'C'","2407","33","8","5"],["'P0507'","'BOJERI'","'ANTONELLA'","'F'","21-Mar-1984","'C'","2459","14","4","9"],["'P0510'","'CASUCCI'","'PAOLA'","'F'","25-Apr-1995","'C'","2287","15","4","3"],["'P0512'","'PUTZU'","'EMANUELA'","'F'","02-Apr-1991","'C'","2456","37","12","7"]]}}
%---
%[output:3efe3975]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"4×10 table","name":"ans","rows":4,"type":"table","value":[["'P0233'","'ROSSI'","'RICCARDO'","'M'","14-May-1991","'A'","1931","17","4","13"],["'P0254'","'NOVELLO'","'ROBERTO'","'M'","17-Nov-1998","'A'","1559","37","14","2"],["'P0411'","'MOURGLIA LESLEY'","'ROBERTO'","'M'","26-Jun-1997","'A'","1899","14","4","7"],["'P0477'","'POZZI'","'ROBERTO'","'M'","05-Jun-1989","'C'","2423","25","8","9"]]}}
%---
%[output:3807db4f]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"8×10 table","name":"ans","rows":8,"type":"table","value":[["'P0214'","'BARBIERI'","'ROSSANA'","'F'","28-Jan-1992","'B'","2037","16","6","7"],["'P0231'","'GRILLO'","'ROBERTA'","'F'","30-Jun-1997","'A'","1562","17","4","5"],["'P0233'","'ROSSI'","'RICCARDO'","'M'","14-May-1991","'A'","1931","17","4","13"],["'P0254'","'NOVELLO'","'ROBERTO'","'M'","17-Nov-1998","'A'","1559","37","14","2"],["'P0307'","'CARLI'","'ROSSANA'","'F'","27-Sep-1981","'B'","2653","19","6","20"],["'P0340'","'CRIDA'","'ROBERTA'","'F'","07-Apr-1967","'B'","2657","19","4","29"],["'P0411'","'MOURGLIA LESLEY'","'ROBERTO'","'M'","26-Jun-1997","'A'","1899","14","4","7"],["'P0477'","'POZZI'","'ROBERTO'","'M'","05-Jun-1989","'C'","2423","25","8","9"]]}}
%---
%[output:5581dcbd]
%   data: {"dataType":"tabular","outputData":{"columnNames":["Code","Surname","Name","Gender","BirthDate","Education","Wage","CommutingTime","SmartWorkHours","Seniority"],"columns":10,"dataTypes":["cellstr","cellstr","cellstr","cellstr","datetime","cellstr","double","double","double","double"],"header":"2×10 table","name":"ans","rows":2,"type":"table","value":[["'P0215'","'PRENNA'","'FEDERICA'","'F'","22-Jan-1966","'C'","3893","23","8","30"],["'P0277'","'PATRIA'","'ALEXANDRE'","'M'","09-Aug-1967","'C'","4209","30","10","31"]]}}
%---
