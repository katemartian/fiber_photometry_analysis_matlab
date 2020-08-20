%% set peribehavior time
[~, c] = size(dFF_le_cup_in_A);
max_time = 0.00098303996*c;
peri_time = [0.00098303996:0.00098303996:max_time];
peri_time = peri_time - before_onset/1000;

%% Heatmap_A

subplot(2, 5, 1)
makeheatmap(dFF_le_ch_in_A)
title('Left Chamber Entry')

subplot(2, 5, 6)
makeheatmap(dFF_le_ch_out_A)
title('Left Chamber Exit')

subplot(2, 5, 2)
makeheatmap(dFF_le_cup_in_A)
title('Left Cup Entry')

subplot(2, 5, 7)
makeheatmap(dFF_le_cup_out_A)
title('Left Cup Exit')

subplot(2, 5, 3)
makeheatmap(dFF_center_in_A)
title('Center Entry')

subplot(2, 5, 8)
makeheatmap(dFF_center_out_A)
title('Center Exit')

subplot(2, 5, 4)
makeheatmap(dFF_ri_ch_in_A)
title('Right Chamber Entry')

subplot(2, 5, 9)
makeheatmap(dFF_ri_ch_out_A)
title('Right Chamber Exit')

subplot(2, 5, 5)
makeheatmap(dFF_ri_cup_in_A)
title('Right Cup Emtry')

subplot(2, 5, 10)
makeheatmap(dFF_ri_cup_out_A)
title('Right Cup Exit')

%% Heatmap_B

subplot(2, 5, 1)
makeheatmap(dFF_le_ch_in_B)
title('Left Chamber Entry')

subplot(2, 5, 6)
makeheatmap(dFF_le_ch_out_B)
title('Left Chamber Exit')

subplot(2, 5, 2)
makeheatmap(dFF_le_cup_in_B)
title('Left Cup Entry')

subplot(2, 5, 7)
makeheatmap(dFF_le_cup_out_B)
title('Left Cup Exit')

subplot(2, 5, 3)
makeheatmap(dFF_center_in_B)
title('Center Entry')

subplot(2, 5, 8)
makeheatmap(dFF_center_out_B)
title('Center Exit')

subplot(2, 5, 4)
makeheatmap(dFF_ri_ch_in_B)
title('Right Chamber Entry')

subplot(2, 5, 9)
makeheatmap(dFF_ri_ch_out_B)
title('Right Chamber Exit')

subplot(2, 5, 5)
makeheatmap(dFF_ri_cup_in_B)
title('Right Cup Emtry')

subplot(2, 5, 10)
makeheatmap(dFF_ri_cup_out_B)
title('Right Cup Exit')

%% Heatmap_C

subplot(2, 5, 1)
makeheatmap(dFF_le_ch_in_C)
title('Left Chamber Entry')

subplot(2, 5, 6)
makeheatmap(dFF_le_ch_out_C)
title('Left Chamber Exit')

subplot(2, 5, 2)
makeheatmap(dFF_le_cup_in_C)
title('Left Cup Entry')

subplot(2, 5, 7)
makeheatmap(dFF_le_cup_out_C)
title('Left Cup Exit')

subplot(2, 5, 3)
makeheatmap(dFF_center_in_C)
title('Center Entry')

subplot(2, 5, 8)
makeheatmap(dFF_center_out_C)
title('Center Exit')

subplot(2, 5, 4)
makeheatmap(dFF_ri_ch_in_C)
title('Right Chamber Entry')

subplot(2, 5, 9)
makeheatmap(dFF_ri_ch_out_C)
title('Right Chamber Exit')

subplot(2, 5, 5)
makeheatmap(dFF_ri_cup_in_C)
title('Right Cup Emtry')

subplot(2, 5, 10)
makeheatmap(dFF_ri_cup_out_C)
title('Right Cup Exit')