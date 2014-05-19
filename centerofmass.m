%%This script allows you to find the center of mass of a grayscale
%%image. You need to enter the path of the image in the first line of code.
%%The program will then ask you to select the part of the image whose
%%center of mass is to be found. 

%% The algorithm first finds the point of maximmum intensity for each cell and then normalizes the intensity of each of the pixel in the cell by dividing each pixel value with the value of the maximum intensity of a pixel in the cell(now each value lies between zero and one). Then it applies a filter that filters out the pixels with intensities less than a certain threshold(15%) and then it finds the weighted centre of mass(centre of intensity) of each of the cells. THis is the Rok Focus of the cells

%%
clear all;
res=0.1417; % this is determined by the microscopes, it is 0.2125 if you have 0.2125 microns per pixel, 0.1417 for spn
load('/Users/eesh/centerofmass/Membranes--vertices--Vertex-x.mat');
datax=data;
cell_number=size(datax,3); % This just assigns 109 to the cel_number for the given file
load('/Users/eesh/centerofmass/Membranes--vertices--Vertex-y.mat'); %this loads the y 
datay=data;
cell_number=size(datay,3); % This just assigns 109 to the cel_number for the given file
COM=zeros(cell_number,2);
%nox_vertices=zeros(1,cell_number);
%for i=1:cell_number,
%    nox_vertices(i) = size(data{1,1,i},1); %this is
%end
%nox_vertices;
A=imread('RokProj_z008_c001.tif'); 
C=imread('CellsProj_z008_c003.tif'); 
imshow(A);
A=double(A);
hold on;


COM_threshold = cell(cell_number,2,7);   %for thresholding, holding com for different thresholds

for threshold=[0.5 0.6 0.7 0.8 0.85 0.9 0.95],

for cell_index=1:cell_number, %this mega for loop calculates the COM for all the cells which are taken from the edge output
    
    tx = datax{1,1,cell_index}'./res;

    ty=datay{1,1,cell_index}'./res;

%now i just need to use the vertices(i already know how to access them, i
%just have to use roipoly with vertices and i am done.
%%


%%THe center of mass is stored in the variables COM_X and COM_Y and an
%%image is outputed by the program(the tiny red dot is the center of mass)

  %just enter the image file, make sure you enter the file is added to MATLAB's path
BW=roipoly(A,tx,ty);
%BW=double(BW);
SE = strel('octagon',3);
BW = imerode(BW,SE);
ANS=BW.*A;
%imshow(ANS);
g = mat2gray(ANS);
ANS = im2bw(g, threshold);


%% This part of the code is for finding the x coordinate of the center of mass
%ANS is the variable with the image that has been cut using roipoly
X_pixels=size(A,1);
Y_pixels=size(A,2);
xtotals = sum(ANS~=0,1);
%the for loop just adds 1s to the places where there are zeros so there is
%no division by zero 
for i=1:Y_pixels,
    if(xtotals(i)==0) xtotals(i)=xtotals(i)+1;
    end
end
x_totals=xtotals;

T=sum(ANS,1);

X=T./x_totals;
COM_X=0;
SUM_X=sum(X);
for j=1:Y_pixels,
    COM_X= j*X(j)+COM_X;
end
COM_X=COM_X/SUM_X;



%% This part of the code finds the y coordinate of the center of mass

ytotals = sum(ANS~=0,2);
for i=1:X_pixels,
    if(ytotals(i)==0) ytotals(i)=ytotals(i)+1;
    end
end
y_totals=ytotals;

T=sum(ANS,2);

Y=T./y_totals;
COM_Y=0;
SUM_Y=sum(Y);
for j=1:X_pixels,
    COM_Y= j*Y(j)+COM_Y;
end
COM_Y=COM_Y/SUM_Y;


COM(cell_index,1)=COM_X;
COM(cell_index,2)=COM_Y;

if 0
%%HERE I ATTEMPT TO FIND THE position of the maxima of intensity
[maxValue, linearIndexesOfMaxes] = max(ANS(:));

[rowsOfMaxes colsOfMaxes] = find(ANS == maxValue);
COM_Y=rowsOfMaxes(1);
COM_X=colsOfMaxes(1);
end
%% the following code plots the center of mass onto the figure
%imshow(ANS);
%hold on;
%tx and ty are the vertices' x and y coordinates for the cell corresponding to this loops iteration in a vertex form)



%%HERE THIS IS JUST FOR THRESHOLD TEST, REMOVE AFTER IT IS DONE
if(threshold==0.5),
    plot(COM_X, COM_Y, 'yx');
    %legend('0.5')
end

if(threshold==0.6),
    plot(COM_X, COM_Y, 'mx');
    %legend('0.6')
end

if(threshold==0.7),
    plot(COM_X, COM_Y, 'cx');
    %legend('0.7')
end

if(threshold==0.8),
    plot(COM_X, COM_Y, 'rx');
    %legend('0.8')
end

if(threshold==0.85),
    plot(COM_X, COM_Y, 'gx');
    %legend('0.85')
end

if(threshold==0.9),
    plot(COM_X, COM_Y, 'bx');
    %legend('0.9')
end

if(threshold==0.95),
    plot(COM_X, COM_Y, 'wx');
    %legend('0.95')
end
%%

h = fill(tx,ty,'r');
set(h,'FaceColor','None');
COM;


end
%COM_threshold(:,:,threshold)=COM;
end





%%LEGEND CODE

    plot(0, 0, 'yx');
    legend('yx','0.5')


    plot(0, 0, 'mx');
    legend('0.6')


    plot(0, 0, 'cx');
    legend('0.7')


    plot(0, 0, 'rx');
    legend('0.8')

    plot(0, 0, 'gx');
    legend('0.85')

    plot(0, 0, 'bx');
    legend('0.9')

    plot(0, 0, 'wx');
    legend('0.95')


%% the following code plots the center of mass onto the figure

%plot(COM(:,1), COM(:,2), 'r.'); %this works, plots all the COMs right onto
%the figurehelp aptch

