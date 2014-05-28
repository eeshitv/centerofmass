

A_hold=imread('RokProj_z008_c001.tif');
imshow(A_hold)
hold on;
for cell_index=1:cell_number, %this mega for loop calculates the COM for all the cells which are taken from the edge output
 
%%
    plot(cell_rok(cell_index).COM_X, cell_rok(cell_index).COM_Y, 'rx');
   
    hold on;

    %%DO NOT FORGET TO HOLD ON
   
    %%RADIAL INTENSITY DISTRIBUTION FOR ROK
    
    
    %%THIS PLOTS THE CELL NUMBER ONTO THE CELL
  text( cell(cell_index).COM_X, cell(cell_index).COM_Y, [num2str(cell_index)],'Color', 'g');   
    
    cell(cell_index).maxima_distance = sqrt(sum(abs(cell_rok(cell_index).MAX - cell_myosin(cell_index).MAX).^2,2));
    
   cell(cell_index).average_maxima_distance = mean(cell(cell_index).maxima_distance);
   
   
   %%THIS PLOTS THE Distance between maximas ONTO THE CELL
  text( cell(cell_index).COM_X, cell(cell_index).COM_Y+10, [num2str(cell(cell_index).average_maxima_distance)],'Color', 'y');  
end



