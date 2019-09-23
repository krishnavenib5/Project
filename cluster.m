clc;close all;clear all;
X=[2 2.5;2.3 4.5;3 2.5;3.5 4; 2.2 3.5;3 4;2.5 3.5;2 4;2.7 3;3 2];     % creating Desne Network n=10 cells
Y=pdist(X);                                                           %Calculating euclidean distance
Z=squareform(Y);                                                      % Generating n*n square Matrix  
A=Z;
L=linkage(Y);                                                        
a=[];c=[];                                                              
 for i=1:10					  %i=rows,j=coloumns	              
     count=-1;                                    %count=-1 because to eliminate (1,1),(2,2),(3,3)..(n,n) distance from itself is 0.
     for j=1:10                                          
         if(Z(i,j)<=1)                            %giving threshold =1
             count=count+1;                       
             a(i,j)=Z(i,j);                       %if condition satisfies stores in another array
         else
             c(i,j)=Z(i,j);
         end
         n(i)=count;                              %count gives number of cells interference to corresponding ith cell
     end
 end
n1=n;Z=a;c1=[];l=0;                                    
 for i=1:10
     if(n(i)==max(n))                           %taking out Cluster Head and its no of interference levels and cluster members as c1
         l=l+1;                                 
         c1(l)=i;
         for j=1:10                            
             if(Z(i,j)>0)                        
                 l=l+1;
                 c1(l)=j;                       
             end
         end
     end
 end
 Z(:,c1)=0;                                 %except cluster numbers ,making remaining members zero 
 Z(c1,:)=0;                                 
 N=Z;
 n(c1)=0;                       
 b=[];
 for i=1:10                               %repeated  same for cluster2
     count=0;
     for j=1:10
         if(Z(i,j)<=1) && (Z(i,j)~=0)    
             count=count+1;
             b(i,j)=Z(i,j);
         end
         n(i)=count;
     end
 end 
 n2=n;
 c2=[];l=0;
 for i=1:10
     if(n(i)==max(n))
         l=l+1;
         c2(l)=i;
         for j=1:10
             if(Z(i,j)>0)
                 l=l+1;
                 c2(l)=j;
             end
         end
     end
 end
 Z(:,c2)=0;
 n(c2)=0;
