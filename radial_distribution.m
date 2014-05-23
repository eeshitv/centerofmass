 %%RADIAL INTENSITY FOR THE ROK
    %%NOW THE UNIT VECTOR PART BEGINS
    
    %%+0
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y 0 1];
     intersect=intersectLinePolygon(line, t_poly);
     if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
     %NOW TO SAVE THE INTENSITIES IN A MATRIX
     x=[cell(cell_index).COM_X intersect(1,1)];
    y=[cell(cell_index).COM_Y intersect(1,2)];
         C1=improfile(A,x,y);
     
     %%+45
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y 1 1];
     intersect=intersectLinePolygon(line, t_poly);
       if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
      %NOW TO SAVE THE INTENSITIES IN A MATRIX
     x=[cell(cell_index).COM_X intersect(1,1)];
    y=[cell(cell_index).COM_Y intersect(1,2)];
         C2=improfile(A,x,y);
     
         %%+90
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y 1 0];
     intersect=intersectLinePolygon(line, t_poly);
        if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
      %NOW TO SAVE THE INTENSITIES IN A MATRIX
     x=[cell(cell_index).COM_X intersect(1,1)];
    y=[cell(cell_index).COM_Y intersect(1,2)];
         C3=improfile(A,x,y);
     
         %%+-45
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y 1 -1];
     intersect=intersectLinePolygon(line, t_poly);
      if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
 %NOW TO SAVE THE INTENSITIES IN A MATRIX
     x=[cell(cell_index).COM_X intersect(1,1)];
     y=[cell(cell_index).COM_Y intersect(1,2)];
         C4=improfile(A,x,y);
         
         %%+22.5+45
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y sin(pi/8) cos(pi/8)];
     intersect=intersectLinePolygon(line, t_poly);
       if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
 %NOW TO SAVE THE INTENSITIES IN A MATRIX
     x=[cell(cell_index).COM_X intersect(1,1)];
     y=[cell(cell_index).COM_Y intersect(1,2)];
         C5=improfile(A,x,y);
         
         %%22.5
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y cos(pi/8) sin(pi/8)];
     intersect=intersectLinePolygon(line, t_poly);
      if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
 %NOW TO SAVE THE INTENSITIES IN A MATRIX
     x=[cell(cell_index).COM_X intersect(1,1)];
     y=[cell(cell_index).COM_Y intersect(1,2)];
         C6=improfile(A,x,y);
         
         %%-22.5
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y cos(pi/8) -sin(pi/8)];
     intersect=intersectLinePolygon(line, t_poly);
       if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
 %NOW TO SAVE THE INTENSITIES IN A MATRIX
     x=[cell(cell_index).COM_X intersect(1,1)];
     y=[cell(cell_index).COM_Y intersect(1,2)];
         C7=improfile(A,x,y);
         
      %%-22.5-45
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y sin(pi/8) -cos(pi/8)];
     intersect=intersectLinePolygon(line, t_poly);
       if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
 %NOW TO SAVE THE INTENSITIES IN A MATRIX
     x=[cell(cell_index).COM_X intersect(1,1)];
     y=[cell(cell_index).COM_Y intersect(1,2)];
         C8=improfile(A,x,y);
         
         

   
  
  
  %%NOW TO FIND THE AVERAGE
    LOL=[size(C1,1),size(C2,1),size(C3,1),size(C4,1),size(C5,1),size(C6,1),size(C7,1),size(C8,1) ];
    max_index=max(LOL);
    %%PADDING ZEROS for finding average easily
    C1 = vertcat(C1,NaN(max_index-size(C1,1),1));
    C2 = vertcat(C2,NaN(max_index-size(C2,1),1)); 
    C3 = vertcat(C3,NaN(max_index-size(C3,1),1)); 
    C4 = vertcat(C4,NaN(max_index-size(C4,1),1));
    C5 = vertcat(C5,NaN(max_index-size(C5,1),1));
    C6 = vertcat(C6,NaN(max_index-size(C6,1),1));
    C7 = vertcat(C7,NaN(max_index-size(C7,1),1));
    C8 = vertcat(C8,NaN(max_index-size(C8,1),1));
    %USE NaN instead of zeros
    C=[C1 C2 C3 C4 C5 C6 C7 C8];
    mean_C = nanmean(C,2);
    stdev_C = nanstd(C',1);
  
    cell(cell_index).index = cell_index;
    cell(cell_index).mean = mean_C;
    cell(cell_index).C = C;
    cell(cell_index).stdev = stdev_C;