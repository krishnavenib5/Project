function [y]=colorSafe(k,c,G,x)    %checking for currentely using channel is already used or not ,if used it return false  
for i=1:10
    if(G(k,i)==1 && c==x(i))
        y=false;
    end
end
y=true;
end
