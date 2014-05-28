  intersect=intersectLinePolygon(line, t_poly);
     if(rok),
           h = fill([cell(cell_index).COM_X intersect(1,1)],[cell(cell_index).COM_Y intersect(1,2)],'r');
           set(h,'FaceColor','None');
           h = fill([cell(cell_index).COM_X intersect(2,1)],[cell(cell_index).COM_Y intersect(2,2)],'r');
           set(h,'FaceColor','None');
     end
     %NOW TO SAVE THE INTENSITIES IN A MATRIX  
x=[cell(cell_index).COM_X intersect(2,1)];
y=[cell(cell_index).COM_Y intersect(2,2)];
[cx,cy,C_temp]=improfile(A,x,y,'bilinear');
[c,i_line]=max(C_temp);
MAX=[MAX; cx(i_line) , cy(i_line)];