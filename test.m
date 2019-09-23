clc;close all;clear all;
v=[1 3 9 10 2 4 5 6 7 8 6 2 8 2 6 8 8 5 5 6 5 7 6 7 9 10 1 3 3  3 9 7 4 6];  %v for vertices
e=[1 3 9 10 2 4 5 6 7 8 2 6 2 8 8 6 5 8 6 5 7 5 7 6 3 3  3 9 10 1 7 9 6 4];  %e for edges
S=graph(v,e);                                                                %Creating graph 
plot(S);
A=adjacency(S);                            %It gives matrix that if connecton is between two cells it makes 1 otherwise 0
G=full(A);                       
G2=G;G1=G;                            %G is total network
c2=[1 3 9 10];                              
G1(:,c2)=[];G1(c2,:)=[];              %G1 is only cluster1

c1=[6 2 4 5 7 8];              
G2(:,c1)=[];G2(c1,:)=[];               %G2 is only cluster2

k=1;n=10;m=4;x1=zeros(1,10);          %m means max no.of channels that used in each cluster  that is m=1,2,3,4 
y=Graphcolor(k,G,x1,1);               %x1 is matrix for 10 cells corresponding assigned channels from 1 to 4 
                                      %k is index of cells to which cell we are pointing 
