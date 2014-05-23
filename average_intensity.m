%%PLOTTING the AVERAGE intensity Distribution for The Cell

 %myosin average
 cell=cell_myosin;

    max_size=0;
for cell_index=1:cell_number,
  
    if(max_size<=size(cell(cell_index).mean)),
        max_size=size(cell(cell_index).mean);
    end
end
max_size;
for cell_index=1:cell_number,
  
    cell(cell_index).mean = vertcat(cell(cell_index).mean,NaN(max_size(1)-size(cell(cell_index).mean,1),1));
end
  
C=[];

for cell_index=1:cell_number,
  
    C=[C cell(cell_index).mean];
end

    average_C = nanmean(C,2);
    stdev_C = nanstd(C',1);
figure
 shadedErrorBar(1:size( average_C',2), average_C',stdev_C,'r');
 
   
   
 
 hold on
  cell=cell_rok;
    max_size=0;
for cell_index=1:cell_number,
  
    if(max_size<=size(cell(cell_index).mean)),
        max_size=size(cell(cell_index).mean);
    end
end
max_size;
for cell_index=1:cell_number,
  
    cell(cell_index).mean = vertcat(cell(cell_index).mean,NaN(max_size(1)-size(cell(cell_index).mean,1),1));
end
  
C=[];

for cell_index=1:cell_number,
  
    C=[C cell(cell_index).mean];
end

    average_C = nanmean(C,2);
    stdev_C = nanstd(C',1); 
 shadedErrorBar(1:size( average_C',2), average_C',stdev_C,'g');