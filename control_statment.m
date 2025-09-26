a= input("Enter the number  ");

if a>0
    disp(a + " is positive")
elseif a<0
    disp(a +"  is negative")
else
    disp(a+ "  is zero")
end

%%
for i = 0:2:10
    disp(i);
end

%%



a = int(input("Enter the number until you wanna to check"));

for i =0:1:a
    if i==0
        f1 =0;
    elseif i==1
        f1=1;
    else
        f1 = (f1-1) + (f1-2)
    end
    disp(f1)

end
 
