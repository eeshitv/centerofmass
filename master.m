%%This script allows you to find the center of mass of a grayscale
%%image. You need to enter the path of the image in the first line of code.
%%The program will then ask you to select the part of the image whose
%%center of mass is to be found. 

%% The algorithm first finds the point of maximmum intensity for each cell and then normalizes the intensity of each of the pixel in the cell by dividing each pixel value with the value of the maximum intensity of a pixel in the cell(now each value lies between zero and one). Then it applies a filter that filters out the pixels with intensities less than a certain threshold(15%) and then it finds the weighted centre of mass(centre of intensity) of each of the cells. THis is the Rok Focus of the cells

%%
clear all;
res=0.1417; % this is determined by the microscopes, it is 0.2125 if you have 0.2125 microns per pixel, 0.1417 for spn

%%Loading the data
load('/Users/eesh/centerofmass_spn/Membranes--vertices--Vertex-x.mat');
datax=data;
cell_number=size(datax,3); % This just assigns 109 to the cel_number for the given file
load('/Users/eesh/centerofmass_spn/Membranes--vertices--Vertex-y.mat'); %this loads the y 
datay=data;
cell_number=size(datay,3); % This just assigns 109 to the cel_number for the given file
COM=zeros(cell_number,2);


%nox_vertices=zeros(1,cell_number);
%for i=1:cell_number,
%    nox_vertices(i) = size(data{1,1,i},1); %this is
%end
%nox_vertices;

A=imread('RokProj_z008_c001.tif'); 
M=imread('MyosinProj_z008_c003.tif'); 
C=imread('CellsProj_z008_c003.tif'); 
imshow(A);
A=double(A);
%%REMEMBER: IF YOU to output a grayscale image you must convert it to
%%uint8(use imshow(A) , after doing double(A), and it wont show output,
%%nothing wrong with the matrix, but it just wont show output
hold on;
rok=1;%(this is a flag for printing lines onto cell for intensity distribution)


COM_threshold = cell(cell_number,2,7);   %for thresholding, holding com for different thresholds

threshold=0.80 ;

for cell_index=1:cell_number, %this mega for loop calculates the COM for all the cells which are taken from the edge output
 
        %We find the center of mass of a cell 
        run('/Users/eesh/centerofmass_spn/centerofmass.m')

        
        %% the following code plots the center of mass onto the figure
    %imshow(ANS);
    %hold on;
    %tx and ty are the vertices' x and y coordinates for the cell corresponding to this loops iteration in a vertex form)
    %%
    plot(cell(cell_index).COM_X, cell(cell_index).COM_Y, 'rx');
    h = fill(tx,ty,'r');
    set(h,'FaceColor','None');
    COM;

    hold on;
    %%DO NOT FORGET TO HOLD ON
    
    %%Find the Rok Radial intensity using radial lines
    run('/Users/eesh/centerofmass_spn/radial_distribution.m')
             
    %%THIS PLOTS THE CELL NUMBER ONTO THE CELL
    text( cell(cell_index).COM_X, cell(cell_index).COM_Y, [num2str(cell_index)],'Color', 'g');
end


%%SAVING ALL THE DATA for ROK into cell_rok
cell_rok=cell;
rok=0;



%%THE PLOTS USING SUBPLOT FOR ROK
%COM_threshold(:,:,threshold)=COM;
k = waitforbuttonpress ;
    hold off;
    
    start_cell=91;
    end_cell=100;
    i=1;
for cell_index=[96 69 3 86 100 113 39 47 38 99]%just selecting cell indices for plotting randomly
 %%plot the shadederrorbars
   
    cell(cell_index).mean';
    %plot(mean_C')
    
    subplot(2,5,i);%subtract the first index -1 here so that the subplot input never goes above 20
 % imshow( cell(cell_index).ANS);
    
   %hold on;
  
   shadedErrorBar(1:size( cell(cell_index).mean',2), cell(cell_index).mean',cell(cell_index).stdev,'g');
    axis([0,40,0,190]);
     title(cell(cell_index).index)
     hold on
 i=i+1;
end



%%plotting myosin onto the Rok plots
%%NOW WE PLOT MYOSIN DISTRIBUTION PLOTS IN RED
%%MYOSIN IMAGE IS SAVED AND THE EDGES ARE DEFINED
 A=M;
    
    for cell_index=1:cell_number,
        
         tx = datax{1,1,cell_index}'./res;

    ty = datay{1,1,cell_index}'./res;

     vert_cell=size(tx,2);
   t_poly=zeros(vert_cell,2);

   for i=1:vert_cell,
       t_poly(i ,1)=tx(i);
       t_poly(i ,2)=ty(i);
   end

   t_poly;
    
   
    %%CALLING THE SCRIPT THAT DEALS WITH RADIAL INTENITY USING UNIT VECTORS
   run('/Users/eesh/centerofmass_spn/radial_distribution.m')
    
    
end

%%SAVING ALL THE DATA for ROK into cell_rok
cell_myosin=cell;

%%THE PLOTS USING SUBPLOT FOR MYOSIN
%COM_threshold(:,:,threshold)=COM;

    
  i=1;
for cell_index=[96 69 3 86 100 113 39 47 38 99],%just selecting cell indices for plotting randomly
 %%plot the shadederrorbars
    
    cell(cell_index).mean';
    %plot(mean_C')
    
    subplot(2,5,i);%subtract the first index -1 here so that the subplot input never goes above 20
 % imshow( cell(cell_index).ANS);
    
   %hold on;
  
   shadedErrorBar(1:size( cell(cell_index).mean',2), cell(cell_index).mean',cell(cell_index).stdev,'r');
    axis([0,40,0,190]);
    title(cell(cell_index).index)
   i=i+1;  

end




%%SCRIPT TO FIND THE AVERAGE Intensity
k = waitforbuttonpress ;
    hold off;
    
run('/Users/eesh/centerofmass_spn/average_intensity.m');
