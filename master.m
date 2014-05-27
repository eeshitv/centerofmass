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
rok=1;

COM_threshold = cell(cell_number,2,7);   %for thresholding, holding com for different thresholds

threshold=0.80 ;

for cell_index=1:cell_number, %this mega for loop calculates the COM for all the cells which are taken from the edge output
    
   %%SCRIPT TO FIND CENTER OF MASS OF A CELL 
   run('/Users/eesh/centerofmass_spn/centerofmass_cell');

%%
    plot(COM_X, COM_Y, 'rx');
    h = fill(tx,ty,'r');
    set(h,'FaceColor','None');
    COM;

    hold on;
    %%DO NOT FORGET TO HOLD ON
   
    %%RADIAL INTENSITY DISTRIBUTION FOR ROK
    run('/Users/eesh/centerofmass_spn/radial_distribution.m');
    
    %%THIS PLOTS THE CELL NUMBER ONTO THE CELL
  text( cell(cell_index).COM_X, cell(cell_index).COM_Y, [num2str(cell_index)],'Color', 'g');   
    
    
end
 cell_rok=cell;


%%SAVING ALL THE DATA for ROK into cell_rok

%%plotting myosin onto the Rok plots
%%The mysoin_distribution is stored in a different file for sanity
%%NOW WE PLOT MYOSIN DISTRIBUTION PLOTS IN RED
    %%NOW THE UNIT VECTOR PART BEGINS
 A=M;
 rok=0; %for the plotting to be off   
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
    
  run('/Users/eesh/centerofmass_spn/radial_distribution.m');
    
end
cell_myosin=cell;

%%THE PLOTS USING SUBPLOT FOR MYOSIN
%COM_threshold(:,:,threshold)=COM;




%%THE PLOTS USING SUBPLOT FOR ROK
%COM_threshold(:,:,threshold)=COM;
k = waitforbuttonpress ;
    hold off;
    
    start_cell=31;
    end_cell=40;
    
     %%MYOSIN PLOT
 cell=cell_myosin;
 rok=0;%this is just for plotting
  run('/Users/eesh/centerofmass_spn/plot_radial.m');

    %%ROK PLOT
    cell=cell_rok;
    rok=1;
    run('/Users/eesh/centerofmass_spn/plot_radial.m');


    
%%PLOTTING the AVERAGE intensity Distribution for The Cell

k = waitforbuttonpress ;
    hold off;
    
%%PLOT FOR MYOSIN AVERAGE IVER CELLS 
 cell=cell_myosin;
    rok=0;
    
 run('/Users/eesh/centerofmass_spn/averageovercells.m');
 hold on
 
%%PLOT FOR ROK AVERAGE OVER CELLS 
 cell=cell_rok;
rok=1;

 run('/Users/eesh/centerofmass_spn/averageovercells.m'); 
