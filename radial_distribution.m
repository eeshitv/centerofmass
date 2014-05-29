 MAX=[];%%THis variable makes the maximum intensity matrix 0 
%%BASICALLY FINDING RADIAL INTENSITIES for 0 to 180 degrees of lines , 180
%%to 360 part remains
  angles={[0 1] [1 1] [ 1 0] [1 -1] [sin(pi/8) cos(pi/8)] [cos(pi/8) sin(pi/8)] [cos(pi/8) -sin(pi/8)] [sin(pi/8) -cos(pi/8)] [sin(pi/6) cos(pi/6)] [cos(pi/6) sin(pi/6)] [cos(pi/6) -sin(pi/6)] [sin(pi/6) -cos(pi/6)] [sin(pi/12) cos(pi/12)] [cos(pi/12) sin(pi/12)] [cos(pi/12) -sin(pi/12)] [sin(pi/12) -cos(pi/12)]};       
  for q=1:16,
         line=[cell(cell_index).COM_X cell(cell_index).COM_Y angles{q}(1) -angles{q}(2)];
         quadrant=1;
         run('/Users/eesh/eesh_summer_14/centerofmass_spn/script_radialmax_distance.m');
         TEMP(q).C=C_temp;
        
         quadrant=0;
         run('/Users/eesh/eesh_summer_14/centerofmass_spn/script_radialmax_distance.m');
         TEMP(q+16).C=C_temp;
         
  end
 

  %%NOW TO FIND THE AVERAGE, we first find the maximum size and pad with
  %%NaNs
  LOL=[];
  for q=1:32,
         LOL=[LOL size(TEMP(q).C,1)];
                 
  end
 max_index=max(LOL);
   
    %%PADDING NaNs to make it easy to find the average 
    C=[];
     for q=1:32,
         TEMP(q).C = vertcat(TEMP(q).C ,NaN(max_index-size(TEMP(q).C ,1),1));
         C=[C TEMP(q).C ];
     end




    %USE NaN instead of zeros
     
    mean_C = nanmean(C,2);
    stdev_C = nanstd(C',1);
  
    cell(cell_index).index = cell_index;
    cell(cell_index).mean = mean_C;
    cell(cell_index).C = C;
    cell(cell_index).stdev = stdev_C;
    cell(cell_index).MAX=MAX;
    


