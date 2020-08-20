function [TF, out] = FP_findpeaks(x, time, box_id)

dFF_3CT_sd = std(x);
TF = islocalmax(x, 'MinProminence',dFF_3CT_sd*4);

le_ch_peak_num = [];
ri_ch_peak_num = [];

[r, ~] = size(box_id.left_chamber_bout);
i = 1;
while i <= r
    [~, ans_le_in] = min(abs(time - box_id.left_chamber_bout(i, 1)));
    [~, ans_le_out] = min(abs(time - box_id.left_chamber_bout(i, 2)));
    le_ch_peak = nnz(TF(ans_le_in:ans_le_out));
    le_ch_peak_num = [le_ch_peak_num, le_ch_peak];
    i = i+1;
end
le_ch_peak_total = sum(le_ch_peak_num);

[r, ~] = size(box_id.right_chamber_bout);
i = 1;
while i <= r
    [~, ans_ri_in] = min(abs(time - box_id.right_chamber_bout(i, 1)));
    [~, ans_ri_out] = min(abs(time - box_id.right_chamber_bout(i, 2)));
    ri_ch_peak = nnz(TF(ans_ri_in:ans_ri_out));
    ri_ch_peak_num = [ri_ch_peak_num, ri_ch_peak];
    i = i+1;
end
ri_ch_peak_total = sum(ri_ch_peak_num);



plot(time(TF), x(TF), 'r*'); hold on


formatSpec = '%s has %d peaks, %s has %d peaks.';
A1 = box_id.leftcue;
A2 = le_ch_peak_total;
A3 = box_id.rightcue;
A4 = ri_ch_peak_total;
str = sprintf(formatSpec,A1,A2, A3, A4);

xlabel({'Time (s)'; str});
%title(str)
end