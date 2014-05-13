%%This script allows you to find the center of mass of a grayscale
%%image. You need to enter the path of the image in the first line of code.
%%The program will then ask you to select the part of the image whose
%%center of mass is to be found. 

%%THe center of mass is stored in the variables COM_X and COM_Y and an
%%image is outputed by the program(the tiny red dot is the center of mass)

A=imread('RokProj_z008_c001.tif');   %just enter the image file, make sure you enter the file is added to MATLAB's path
BW=roipoly(A);
BW=uint8(BW);
ANS=BW.*A;
imshow(ANS);
%% This part of the code is for finding the x coordinate of the center of mass
%ANS is the variable with the image that has been cut using roipoly

xtotals = sum(ANS~=0,1);
%the for loop just adds 1s to the places where there are zeros so there is
%no division by zero 
for i=1:500,
    if(xtotals(i)==0) xtotals(i)=xtotals(i)+1;
    end
end
x_totals=xtotals;

T=sum(ANS,1);

X=T./x_totals;
COM_X=0;
SUM_X=sum(X);
for j=1:500,
    COM_X= j*X(j)+COM_X;
end
COM_X=COM_X/SUM_X;



%% This part of the code finds the y coordinate of the center of mass

ytotals = sum(ANS~=0,2);
for i=1:500,
    if(ytotals(i)==0) ytotals(i)=ytotals(i)+1;
    end
end
ytotals;

T=sum(ANS,2);

Y=T./ytotals;
COM_Y=0;
SUM_Y=sum(Y);
for j=1:500,
    COM_Y= j*Y(j)+COM_Y;
end
COM_Y=COM_Y/SUM_Y;




%% the following code plots the center of mass onto the figure
imshow(ANS);
hold on;
plot(COM_X, COM_Y, 'r.');
COM_X
COM_Y
