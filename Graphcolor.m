function [x]=Graphcolor(k,G,y,c)         %using Graph coloring technique algorithm, assigning channels to cells based on colors
while k<11
    if(colorSafe(k,c,G,y))               %if block inside assigning channel to cells
        y(k)=c;                           
        k=k+1;
        if(k<11 && c~=4)
            y=Graphcolor(k,G,y,c+1);     %after assigning color we updating network with channels in y
        else
            if k<11
            c=1;                           %if c value exceeds agian it starts from 1
            y = Graphcolor(k,G,y,c+1);
            end
        end
     end
     if k==11
         break;
     end
end
x=y;                                        
end

