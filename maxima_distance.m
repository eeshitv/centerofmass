
AVERAGE_spn=[];
AVERAGE_wildtype=[];
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
    
  
  %%Average using the method Adam suggested
    cell(cell_index).maxima_distance = sqrt(sum(abs(cell_rok(cell_index).MAX - cell_myosin(cell_index).MAX).^2,2));
    
   cell(cell_index).average_maxima_distance_adam = mean(cell(cell_index).maxima_distance);
   
   
   %%THIS PLOTS THE Distance between maximas(adam) ONTO THE CELL
  text( cell(cell_index).COM_X, cell(cell_index).COM_Y+5, [num2str(cell(cell_index).average_maxima_distance_adam)],'Color', 'y');  
  
  
  
  %%Average using average of averages
   [r_rok,t_rok]=max(cell_rok(cell_index).mean);
   [r_myosin,t_myosin]=max(cell_myosin(cell_index).mean);
   
   cell(cell_index).average_maxima_distance = abs(t_myosin-t_rok);
   if(cell(cell_index).average_maxima_distance>=50)
    cell(cell_index).average_maxima_distance=NaN;
  end
   
   AVERAGE_spn=[AVERAGE_spn;cell(cell_index).average_maxima_distance]; 
   

   
   %%THIS PLOTS THE Distance between maximas(average of average) ONTO THE CELL
  text( cell(cell_index).COM_X, cell(cell_index).COM_Y+10, [num2str(cell(cell_index).average_maxima_distance)],'Color', 'b');  
 
  
  
if(cell_index<=109)
    if(cell_wildtype(cell_index).average_maxima_distance>=50)%this is open for debate, here we basically try to remove the myosin from another cell that is causing a distortion in our cell of interest
    cell_wildtype(cell_index).average_maxima_distance=NaN;
    end
  
   AVERAGE_wildtype=[AVERAGE_wildtype;cell_wildtype(cell_index).average_maxima_distance]; 
end

end

k = waitforbuttonpress ;
    hold off;
    
subplot(1,2,1);%subtract the first index -1 here so that the subplot input never goes above 20
 boxplot(AVERAGE_spn)
     title('SPN')
     ylim([-1 10])
     hold on    

subplot(1,2,2);%subtract the first index -1 here so that the subplot input never goes above 20
 boxplot(AVERAGE_wildtype)
     title('WILD TYPE')
    ylim([-1 10])
     hold on  

