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
         
         
         

     %%+60
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y sin(pi/6) cos(pi/6)];
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
         C9=improfile(A,x,y);
         
         %%30
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y cos(pi/6) sin(pi/6)];
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
         C10=improfile(A,x,y);
         
         %%-30
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y cos(pi/6) -sin(pi/6)];
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
         C11=improfile(A,x,y);
         
      %%-60
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y sin(pi/6) -cos(pi/6)];
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
         C12=improfile(A,x,y);
         
         
         %%+60+15
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y sin(pi/12) cos(pi/12)];
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
         C13=improfile(A,x,y);
         
         %%15
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y cos(pi/12) sin(pi/12)];
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
         C14=improfile(A,x,y);
         
         %%-15
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y cos(pi/12) -sin(pi/12)];
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
         C15=improfile(A,x,y);
         
      %%180-15
    line=[cell(cell_index).COM_X cell(cell_index).COM_Y sin(pi/12) -cos(pi/12)];
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
         C16=improfile(A,x,y);
         
  
  
  %%NOW TO FIND THE AVERAGE
    LOL=[size(C1,1),size(C2,1),size(C3,1),size(C4,1),size(C5,1),size(C6,1),size(C7,1),size(C8,1),size(C9,1),size(C10,1),size(C11,1),size(C12,1),size(C13,1),size(C14,1),size(C15,1),size(C16,1)];
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
      C9 = vertcat(C9,NaN(max_index-size(C9,1),1));
        C10 = vertcat(C10,NaN(max_index-size(C10,1),1));
          C11 = vertcat(C11,NaN(max_index-size(C11,1),1));
            C12 = vertcat(C12,NaN(max_index-size(C12,1),1));
               C13 = vertcat(C13,NaN(max_index-size(C13,1),1));
        C14 = vertcat(C14,NaN(max_index-size(C14,1),1));
          C15 = vertcat(C15,NaN(max_index-size(C15,1),1));
            C16 = vertcat(C16,NaN(max_index-size(C16,1),1));
    %USE NaN instead of zeros
    C=[C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12 C13 C14 C15 C16];
    mean_C = nanmean(C,2);
    stdev_C = nanstd(C',1);
  
    cell(cell_index).index = cell_index;
    cell(cell_index).mean = mean_C;
    cell(cell_index).C = C;
    cell(cell_index).stdev = stdev_C;