%% DO this after "FP_colorcoding_All_in_one"

%% Set trace time window
prompt = '\nBefore onset (sec)\n';
before_onset=input(prompt,'s');
before_onset=str2num(before_onset)*fs;

prompt = '\nAfter onset (sec)\n';
after_onset=input(prompt,'s');
after_onset=str2num(after_onset)*fs;

%% Get peribehavior trace_entry and exit_A
%depending on the time window, some bout might be excluded,
%e.g., onset time 3s will be excluded when before_onset is bigger than 3.

%left chamber-----------------------------------------------------------
[r, ~] = size(A.left_chamber_bout);
for i=1:1:r
    if A.left_chamber_bout(i, 1) - (before_onset/1000) < 0
    elseif A.left_chamber_bout(i, 1) + (after_onset/1000) < 300
        N = A.left_chamber_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_le_ch_in_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_le_ch_in_A = mean(target_dFF_le_ch_in_A(:, 1:before_onset));
        zsd_le_ch_in_A = std(target_dFF_le_ch_in_A(:, 1:before_onset));
        zall_le_ch_in_A(1, :) = (target_dFF_le_ch_in_A(1, :) - zb_le_ch_in_A)/zsd_le_ch_in_A;
        dFF_le_ch_in_A(i, :) = zall_le_ch_in_A(1, :);
    else 
    end
end
dFF_le_ch_in_A = dFF_le_ch_in_A(~all(dFF_le_ch_in_A == 0, 2),:);

[r, ~] = size(A.left_chamber_bout);
for i=1:1:r
    if A.left_chamber_bout(i, 2) - (before_onset/1000) < 0
    elseif A.left_chamber_bout(i, 2) + (after_onset/1000) < 300
        N = A.left_chamber_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_le_ch_out_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_le_ch_out_A = mean(target_dFF_le_ch_out_A(:, 1:before_onset));
        zsd_le_ch_out_A = std(target_dFF_le_ch_out_A(:, 1:before_onset));
        zall_le_ch_out_A(1, :) = (target_dFF_le_ch_out_A(1, :) - zb_le_ch_out_A)/zsd_le_ch_out_A;
        dFF_le_ch_out_A(i, :) = zall_le_ch_out_A(1, :);
    else 
    end
end
dFF_le_ch_out_A = dFF_le_ch_out_A(~all(dFF_le_ch_out_A == 0, 2),:);

%left cup------------------------------------------------------------

[r, ~] = size(A.left_cup_bout);
for i=1:1:r
    if A.left_cup_bout(i, 1) - (before_onset/1000) < 0
    elseif A.left_cup_bout(i, 1) + (after_onset/1000) < 300
        N = A.left_cup_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_le_cup_in_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_le_cup_in_A = mean(target_dFF_le_cup_in_A(:, 1:before_onset));
        zsd_le_cup_in_A = std(target_dFF_le_cup_in_A(:, 1:before_onset));
        zall_le_cup_in_A(1, :) = (target_dFF_le_cup_in_A(1, :) - zb_le_cup_in_A)/zsd_le_cup_in_A;
        dFF_le_cup_in_A(i, :) = zall_le_cup_in_A(1, :);
    else 
    end
end
dFF_le_cup_in_A = dFF_le_cup_in_A(~all(dFF_le_cup_in_A == 0, 2),:);

[r, ~] = size(A.left_cup_bout);
for i=1:1:r
    if A.left_cup_bout(i, 2) - (before_onset/1000) < 0
    elseif A.left_cup_bout(i, 2) + (after_onset/1000) < 300
        N = A.left_cup_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_le_cup_out_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_le_cup_out_A = mean(target_dFF_le_cup_out_A(:, 1:before_onset));
        zsd_le_cup_out_A = std(target_dFF_le_cup_out_A(:, 1:before_onset));
        zall_le_cup_out_A(1, :) = (target_dFF_le_cup_out_A(1, :) - zb_le_cup_out_A)/zsd_le_cup_out_A;
        dFF_le_cup_out_A(i, :) = zall_le_cup_out_A(1, :);
    else 
    end
end
dFF_le_cup_out_A = dFF_le_cup_out_A(~all(dFF_le_cup_out_A == 0, 2),:);

% center ----------------------------------------------------------------

[r, ~] = size(A.center_bout);
for i=1:1:r
    if A.center_bout(i, 1) - (before_onset/1000) < 0
    elseif A.center_bout(i, 1) + (after_onset/1000) < 300
        N = A.center_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_center_in_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_center_in_A = mean(target_dFF_center_in_A(:, 1:before_onset));
        zsd_center_in_A = std(target_dFF_center_in_A(:, 1:before_onset));
        zall_center_in_A(1, :) = (target_dFF_center_in_A(1, :) - zb_center_in_A)/zsd_center_in_A;
        dFF_center_in_A(i, :) = zall_center_in_A(1, :);
    else 
    end
end
dFF_center_in_A = dFF_center_in_A(~all(dFF_center_in_A == 0, 2),:);

[r, ~] = size(A.center_bout);
for i=1:1:r
    if A.center_bout(i, 2) - (before_onset/1000) < 0
    elseif A.center_bout(i, 2) + (after_onset/1000) < 300
        N = A.center_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_center_out_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_center_out_A = mean(target_dFF_center_out_A(:, 1:before_onset));
        zsd_center_out_A = std(target_dFF_center_out_A(:, 1:before_onset));
        zall_center_out_A(1, :) = (target_dFF_center_out_A(1, :) - zb_center_out_A)/zsd_center_out_A;
        dFF_center_out_A(i, :) = zall_center_out_A(1, :);
    else 
    end
end
dFF_center_out_A = dFF_center_out_A(~all(dFF_center_out_A == 0, 2),:);

%right chamber----------------------------------------------------

[r, ~] = size(A.right_chamber_bout);
for i=1:1:r
    if A.right_chamber_bout(i, 1) - (before_onset/1000) < 0
    elseif A.right_chamber_bout(i, 1) + (after_onset/1000) < 300
        N = A.right_chamber_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_ri_ch_in_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_ri_ch_in_A = mean(target_dFF_ri_ch_in_A(:, 1:before_onset));
        zsd_ri_ch_in_A = std(target_dFF_ri_ch_in_A(:, 1:before_onset));
        zall_ri_ch_in_A(1, :) = (target_dFF_ri_ch_in_A(1, :) - zb_ri_ch_in_A)/zsd_ri_ch_in_A;
        dFF_ri_ch_in_A(i, :) = zall_ri_ch_in_A(1, :);
    else 
    end
end
dFF_ri_ch_in_A = dFF_ri_ch_in_A(~all(dFF_ri_ch_in_A == 0, 2),:);

[r, ~] = size(A.right_chamber_bout);
for i=1:1:r
    if A.right_chamber_bout(i, 2) - (before_onset/1000) < 0
    elseif A.right_chamber_bout(i, 2) + (after_onset/1000) < 300
        N = A.right_chamber_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_ri_ch_out_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_ri_ch_out_A = mean(target_dFF_ri_ch_out_A(:, 1:before_onset));
        zsd_ri_ch_out_A = std(target_dFF_ri_ch_out_A(:, 1:before_onset));
        zall_ri_ch_out_A(1, :) = (target_dFF_ri_ch_out_A(1, :) - zb_ri_ch_out_A)/zsd_ri_ch_out_A;
        dFF_ri_ch_out_A(i, :) = zall_ri_ch_out_A(1, :);
    else 
    end
end
dFF_ri_ch_out_A = dFF_ri_ch_out_A(~all(dFF_ri_ch_out_A == 0, 2),:);

%right cup------------------------------------------------------------

[r, ~] = size(A.right_cup_bout);
for i=1:1:r
    if A.right_cup_bout(i, 1) - (before_onset/1000) < 0
    elseif A.right_cup_bout(i, 1) + (after_onset/1000) < 300
        N = A.right_cup_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_ri_cup_in_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_ri_cup_in_A = mean(target_dFF_ri_cup_in_A(:, 1:before_onset));
        zsd_ri_cup_in_A = std(target_dFF_ri_cup_in_A(:, 1:before_onset));
        zall_ri_cup_in_A(1, :) = (target_dFF_ri_cup_in_A(1, :) - zb_ri_cup_in_A)/zsd_ri_cup_in_A;
        dFF_ri_cup_in_A(i, :) = zall_ri_cup_in_A(1, :);
    else 
    end
end
dFF_ri_cup_in_A = dFF_ri_cup_in_A(~all(dFF_ri_cup_in_A == 0, 2),:);

[r, ~] = size(A.right_cup_bout);
for i=1:1:r
    if A.right_cup_bout(i, 2) - (before_onset/1000) < 0
    elseif A.right_cup_bout(i, 2) + (after_onset/1000) < 300
        N = A.right_cup_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_ri_cup_out_A = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_ri_cup_out_A = mean(target_dFF_ri_cup_out_A(:, 1:before_onset));
        zsd_ri_cup_out_A = std(target_dFF_ri_cup_out_A(:, 1:before_onset));
        zall_ri_cup_out_A(1, :) = (target_dFF_ri_cup_out_A(1, :) - zb_ri_cup_out_A)/zsd_ri_cup_out_A;
        dFF_ri_cup_out_A(i, :) = zall_ri_cup_out_A(1, :);
    else 
    end
end
dFF_ri_cup_out_A = dFF_ri_cup_out_A(~all(dFF_ri_cup_out_A == 0, 2),:);



%% Get peribehavior trace_entry and exit_B
%left chamber-----------------------------------------------------------
[r, ~] = size(B.left_chamber_bout);
for i=1:1:r
    if B.left_chamber_bout(i, 1) - (before_onset/1000) < 0
    elseif B.left_chamber_bout(i, 1) + (after_onset/1000) < 300
        N = B.left_chamber_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_le_ch_in_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_le_ch_in_B = mean(target_dFF_le_ch_in_B(:, 1:before_onset));
        zsd_le_ch_in_B = std(target_dFF_le_ch_in_B(:, 1:before_onset));
        zall_le_ch_in_B(1, :) = (target_dFF_le_ch_in_B(1, :) - zb_le_ch_in_B)/zsd_le_ch_in_B;
        dFF_le_ch_in_B(i, :) = zall_le_ch_in_B(1, :);
    else 
        
    end
end
dFF_le_ch_in_B = dFF_le_ch_in_B(~all(dFF_le_ch_in_B == 0, 2),:);

[r, ~] = size(B.left_chamber_bout);
for i=1:1:r
    if B.left_chamber_bout(i, 2) - (before_onset/1000) < 0
    elseif B.left_chamber_bout(i, 2) + (after_onset/1000) < 300
        N = B.left_chamber_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_le_ch_out_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_le_ch_out_B = mean(target_dFF_le_ch_out_B(:, 1:before_onset));
        zsd_le_ch_out_B = std(target_dFF_le_ch_out_B(:, 1:before_onset));
        zall_le_ch_out_B(1, :) = (target_dFF_le_ch_out_B(1, :) - zb_le_ch_out_B)/zsd_le_ch_out_B;
        dFF_le_ch_out_B(i, :) = zall_le_ch_out_B(1, :);
    else 
    end
end
dFF_le_ch_out_B = dFF_le_ch_out_B(~all(dFF_le_ch_out_B == 0, 2),:);

%left cup------------------------------------------------------------

[r, ~] = size(B.left_cup_bout);
for i=1:1:r
    if B.left_cup_bout(i, 1) - (before_onset/1000) < 0
    elseif B.left_cup_bout(i, 1) + (after_onset/1000) < 300
        N = B.left_cup_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_le_cup_in_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_le_cup_in_B = mean(target_dFF_le_cup_in_B(:, 1:before_onset));
        zsd_le_cup_in_B = std(target_dFF_le_cup_in_B(:, 1:before_onset));
        zall_le_cup_in_B(1, :) = (target_dFF_le_cup_in_B(1, :) - zb_le_cup_in_B)/zsd_le_cup_in_B;
        dFF_le_cup_in_B(i, :) = zall_le_cup_in_B(1, :);
    else 
    end
end
dFF_le_cup_in_B = dFF_le_cup_in_B(~all(dFF_le_cup_in_B == 0, 2),:);

[r, ~] = size(B.left_cup_bout);
for i=1:1:r
    if B.left_cup_bout(i, 2) - (before_onset/1000) < 0
    elseif B.left_cup_bout(i, 2) + (after_onset/1000) < 300
        N = B.left_cup_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_le_cup_out_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_le_cup_out_B = mean(target_dFF_le_cup_out_B(:, 1:before_onset));
        zsd_le_cup_out_B = std(target_dFF_le_cup_out_B(:, 1:before_onset));
        zall_le_cup_out_B(1, :) = (target_dFF_le_cup_out_B(1, :) - zb_le_cup_out_B)/zsd_le_cup_out_B;
        dFF_le_cup_out_B(i, :) = zall_le_cup_out_B(1, :);
    else 
    end
end
dFF_le_cup_out_B = dFF_le_cup_out_B(~all(dFF_le_cup_out_B == 0, 2),:);

% center ----------------------------------------------------------------

[r, ~] = size(B.center_bout);
for i=1:1:r
    if B.center_bout(i, 1) - (before_onset/1000) < 0
    elseif B.center_bout(i, 1) + (after_onset/1000) < 300
        N = B.center_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_center_in_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_center_in_B = mean(target_dFF_center_in_B(:, 1:before_onset));
        zsd_center_in_B = std(target_dFF_center_in_B(:, 1:before_onset));
        zall_center_in_B(1, :) = (target_dFF_center_in_B(1, :) - zb_center_in_B)/zsd_center_in_B;
        dFF_center_in_B(i, :) = zall_center_in_B(1, :);
    else 
    end
end
dFF_center_in_B = dFF_center_in_B(~all(dFF_center_in_B == 0, 2),:);

[r, ~] = size(B.center_bout);
for i=1:1:r
    if B.center_bout(i, 2) - (before_onset/1000) < 0
    elseif B.center_bout(i, 2) + (after_onset/1000) < 300
        N = B.center_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_center_out_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_center_out_B = mean(target_dFF_center_out_B(:, 1:before_onset));
        zsd_center_out_B = std(target_dFF_center_out_B(:, 1:before_onset));
        zall_center_out_B(1, :) = (target_dFF_center_out_B(1, :) - zb_center_out_B)/zsd_center_out_B;
        dFF_center_out_B(i, :) = zall_center_out_B(1, :);
    else 
    end
end
dFF_center_out_B = dFF_center_out_B(~all(dFF_center_out_B == 0, 2),:);

%right chamber----------------------------------------------------

[r, ~] = size(B.right_chamber_bout);
for i=1:1:r
    if B.right_chamber_bout(i, 1) - (before_onset/1000) < 0
    elseif B.right_chamber_bout(i, 1) + (after_onset/1000) < 300
        N = B.right_chamber_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_ri_ch_in_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_ri_ch_in_B = mean(target_dFF_ri_ch_in_B(:, 1:before_onset));
        zsd_ri_ch_in_B = std(target_dFF_ri_ch_in_B(:, 1:before_onset));
        zall_ri_ch_in_B(1, :) = (target_dFF_ri_ch_in_B(1, :) - zb_ri_ch_in_B)/zsd_ri_ch_in_B;
        dFF_ri_ch_in_B(i, :) = zall_ri_ch_in_B(1, :);
    else 
    end
end
dFF_ri_ch_in_B = dFF_ri_ch_in_B(~all(dFF_ri_ch_in_B == 0, 2),:);

[r, ~] = size(B.right_chamber_bout);
for i=1:1:r
    if B.right_chamber_bout(i, 2) - (before_onset/1000) < 0
    elseif B.right_chamber_bout(i, 2) + (after_onset/1000) < 300
        N = B.right_chamber_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_ri_ch_out_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_ri_ch_out_B = mean(target_dFF_ri_ch_out_B(:, 1:before_onset));
        zsd_ri_ch_out_B = std(target_dFF_ri_ch_out_B(:, 1:before_onset));
        zall_ri_ch_out_B(1, :) = (target_dFF_ri_ch_out_B(1, :) - zb_ri_ch_out_B)/zsd_ri_ch_out_B;
        dFF_ri_ch_out_B(i, :) = zall_ri_ch_out_B(1, :);
    else 
    end
end
dFF_ri_ch_out_B = dFF_ri_ch_out_B(~all(dFF_ri_ch_out_B == 0, 2),:);

%right cup------------------------------------------------------------

[r, ~] = size(B.right_cup_bout);
for i=1:1:r
    if B.right_cup_bout(i, 1) - (before_onset/1000) < 0
    elseif B.right_cup_bout(i, 1) + (after_onset/1000) < 300
        N = B.right_cup_bout(i, 1);
        [~, ans] = (min(abs(time - N)));
        target_dFF_ri_cup_in_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_ri_cup_in_B = mean(target_dFF_ri_cup_in_B(:, 1:before_onset));
        zsd_ri_cup_in_B = std(target_dFF_ri_cup_in_B(:, 1:before_onset));
        zall_ri_cup_in_B(1, :) = (target_dFF_ri_cup_in_B(1, :) - zb_ri_cup_in_B)/zsd_ri_cup_in_B;
        dFF_ri_cup_in_B(i, :) = zall_ri_cup_in_B(1, :);
    else 
    end
end
dFF_ri_cup_in_B = dFF_ri_cup_in_B(~all(dFF_ri_cup_in_B == 0, 2),:);

[r, ~] = size(B.right_cup_bout);
for i=1:1:r
    if B.right_cup_bout(i, 2) - (before_onset/1000) < 0
    elseif B.right_cup_bout(i, 2) + (after_onset/1000) < 300
        N = B.right_cup_bout(i, 2);
        [~, ans] = (min(abs(time - N)));
        target_dFF_ri_cup_out_B = dFF_3CT(2, ans-before_onset:ans+after_onset);
        zb_ri_cup_out_B = mean(target_dFF_ri_cup_out_B(:, 1:before_onset));
        zsd_ri_cup_out_B = std(target_dFF_ri_cup_out_B(:, 1:before_onset));
        zall_ri_cup_out_B(1, :) = (target_dFF_ri_cup_out_B(1, :) - zb_ri_cup_out_B)/zsd_ri_cup_out_B;
        dFF_ri_cup_out_B(i, :) = zall_ri_cup_out_B(1, :);
    else 
    end
end
dFF_ri_cup_out_B = dFF_ri_cup_out_B(~all(dFF_ri_cup_out_B == 0, 2),:);

%% Get peribehavior trace_entry and exit_C
if assay_type == 'se_pr'
else
    %left chamber-----------------------------------------------------------
    [r, ~] = size(C.left_chamber_bout);
    for i=1:1:r
        if C.left_chamber_bout(i, 1) - (before_onset/1000) < 0
        elseif C.left_chamber_bout(i, 1) + (after_onset/1000) < 300
            N = C.left_chamber_bout(i, 1);
            [~, ans] = (min(abs(time - N)));
            target_dFF_le_ch_in_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_le_ch_in_C = mean(target_dFF_le_ch_in_C(:, 1:before_onset));
            zsd_le_ch_in_C = std(target_dFF_le_ch_in_C(:, 1:before_onset));
            zall_le_ch_in_C(1, :) = (target_dFF_le_ch_in_C(1, :) - zb_le_ch_in_C)/zsd_le_ch_in_C;
            dFF_le_ch_in_C(i, :) = zall_le_ch_in_C(1, :);
        else 

        end
    end
    dFF_le_ch_in_C = dFF_le_ch_in_C(~all(dFF_le_ch_in_C == 0, 2),:);

    [r, ~] = size(C.left_chamber_bout);
    for i=1:1:r
        if C.left_chamber_bout(i, 2) - (before_onset/1000) < 0
        elseif C.left_chamber_bout(i, 2) + (after_onset/1000) < 300
            N = C.left_chamber_bout(i, 2);
            [~, ans] = (min(abs(time - N)));
            target_dFF_le_ch_out_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_le_ch_out_C = mean(target_dFF_le_ch_out_C(:, 1:before_onset));
            zsd_le_ch_out_C = std(target_dFF_le_ch_out_C(:, 1:before_onset));
            zall_le_ch_out_C(1, :) = (target_dFF_le_ch_out_C(1, :) - zb_le_ch_out_C)/zsd_le_ch_out_C;
            dFF_le_ch_out_C(i, :) = zall_le_ch_out_C(1, :);
        else 
        end
    end
    dFF_le_ch_out_C = dFF_le_ch_out_C(~all(dFF_le_ch_out_C == 0, 2),:);

    %left cup------------------------------------------------------------

    [r, ~] = size(C.left_cup_bout);
    for i=1:1:r
        if C.left_cup_bout(i, 1) - (before_onset/1000) < 0
        elseif C.left_cup_bout(i, 1) + (after_onset/1000) < 300
            N = C.left_cup_bout(i, 1);
            [~, ans] = (min(abs(time - N)));
            target_dFF_le_cup_in_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_le_cup_in_C = mean(target_dFF_le_cup_in_C(:, 1:before_onset));
            zsd_le_cup_in_C = std(target_dFF_le_cup_in_C(:, 1:before_onset));
            zall_le_cup_in_C(1, :) = (target_dFF_le_cup_in_C(1, :) - zb_le_cup_in_C)/zsd_le_cup_in_C;
            dFF_le_cup_in_C(i, :) = zall_le_cup_in_C(1, :);
        else 
        end
    end
    dFF_le_cup_in_C = dFF_le_cup_in_C(~all(dFF_le_cup_in_C == 0, 2),:);

    [r, ~] = size(C.left_cup_bout);
    for i=1:1:r
        if C.left_cup_bout(i, 2) - (before_onset/1000) < 0
        elseif C.left_cup_bout(i, 2) + (after_onset/1000) < 300
            N = C.left_cup_bout(i, 2);
            [~, ans] = (min(abs(time - N)));
            target_dFF_le_cup_out_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_le_cup_out_C = mean(target_dFF_le_cup_out_C(:, 1:before_onset));
            zsd_le_cup_out_C = std(target_dFF_le_cup_out_C(:, 1:before_onset));
            zall_le_cup_out_C(1, :) = (target_dFF_le_cup_out_C(1, :) - zb_le_cup_out_C)/zsd_le_cup_out_C;
            dFF_le_cup_out_C(i, :) = zall_le_cup_out_C(1, :);
        else 
        end
    end
    dFF_le_cup_out_C = dFF_le_cup_out_C(~all(dFF_le_cup_out_C == 0, 2),:);

    % center ----------------------------------------------------------------

    [r, ~] = size(C.center_bout);
    for i=1:1:r
        if C.center_bout(i, 1) - (before_onset/1000) < 0
        elseif C.center_bout(i, 1) + (after_onset/1000) < 300
            N = C.center_bout(i, 1);
            [~, ans] = (min(abs(time - N)));
            target_dFF_center_in_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_center_in_C = mean(target_dFF_center_in_C(:, 1:before_onset));
            zsd_center_in_C = std(target_dFF_center_in_C(:, 1:before_onset));
            zall_center_in_C(1, :) = (target_dFF_center_in_C(1, :) - zb_center_in_C)/zsd_center_in_C;
            dFF_center_in_C(i, :) = zall_center_in_C(1, :);
        else 
        end
    end
    dFF_center_in_C = dFF_center_in_C(~all(dFF_center_in_C == 0, 2),:);

    [r, ~] = size(C.center_bout);
    for i=1:1:r
        if C.center_bout(i, 2) - (before_onset/1000) < 0
        elseif C.center_bout(i, 2) + (after_onset/1000) < 300
            N = C.center_bout(i, 2);
            [~, ans] = (min(abs(time - N)));
            target_dFF_center_out_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_center_out_C = mean(target_dFF_center_out_C(:, 1:before_onset));
            zsd_center_out_C = std(target_dFF_center_out_C(:, 1:before_onset));
            zall_center_out_C(1, :) = (target_dFF_center_out_C(1, :) - zb_center_out_C)/zsd_center_out_C;
            dFF_center_out_C(i, :) = zall_center_out_C(1, :);
        else 
        end
    end
    dFF_center_out_C = dFF_center_out_C(~all(dFF_center_out_C == 0, 2),:);

    %right chamber----------------------------------------------------

    [r, ~] = size(C.right_chamber_bout);
    for i=1:1:r
        if C.right_chamber_bout(i, 1) - (before_onset/1000) < 0
        elseif C.right_chamber_bout(i, 1) + (after_onset/1000) < 300
            N = C.right_chamber_bout(i, 1);
            [~, ans] = (min(abs(time - N)));
            target_dFF_ri_ch_in_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_ri_ch_in_C = mean(target_dFF_ri_ch_in_C(:, 1:before_onset));
            zsd_ri_ch_in_C = std(target_dFF_ri_ch_in_C(:, 1:before_onset));
            zall_ri_ch_in_C(1, :) = (target_dFF_ri_ch_in_C(1, :) - zb_ri_ch_in_C)/zsd_ri_ch_in_C;
            dFF_ri_ch_in_C(i, :) = zall_ri_ch_in_C(1, :);
        else 
        end
    end
    dFF_ri_ch_in_C = dFF_ri_ch_in_C(~all(dFF_ri_ch_in_C == 0, 2),:);

    [r, ~] = size(C.right_chamber_bout);
    for i=1:1:r
        if C.right_chamber_bout(i, 2) - (before_onset/1000) < 0
        elseif C.right_chamber_bout(i, 2) + (after_onset/1000) < 300
            N = C.right_chamber_bout(i, 2);
            [~, ans] = (min(abs(time - N)));
            target_dFF_ri_ch_out_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_ri_ch_out_C = mean(target_dFF_ri_ch_out_C(:, 1:before_onset));
            zsd_ri_ch_out_C = std(target_dFF_ri_ch_out_C(:, 1:before_onset));
            zall_ri_ch_out_C(1, :) = (target_dFF_ri_ch_out_C(1, :) - zb_ri_ch_out_C)/zsd_ri_ch_out_C;
            dFF_ri_ch_out_C(i, :) = zall_ri_ch_out_C(1, :);
        else 
        end
    end
    dFF_ri_ch_out_C = dFF_ri_ch_out_C(~all(dFF_ri_ch_out_C == 0, 2),:);

    %right cup------------------------------------------------------------

    [r, ~] = size(C.right_cup_bout);
    for i=1:1:r
        if C.right_cup_bout(i, 1) - (before_onset/1000) < 0
        elseif C.right_cup_bout(i, 1) + (after_onset/1000) < 300
            N = C.right_cup_bout(i, 1);
            [~, ans] = (min(abs(time - N)));
            target_dFF_ri_cup_in_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_ri_cup_in_C = mean(target_dFF_ri_cup_in_C(:, 1:before_onset));
            zsd_ri_cup_in_C = std(target_dFF_ri_cup_in_C(:, 1:before_onset));
            zall_ri_cup_in_C(1, :) = (target_dFF_ri_cup_in_C(1, :) - zb_ri_cup_in_C)/zsd_ri_cup_in_C;
            dFF_ri_cup_in_C(i, :) = zall_ri_cup_in_C(1, :);
        else 
        end
    end
    dFF_ri_cup_in_C = dFF_ri_cup_in_C(~all(dFF_ri_cup_in_C == 0, 2),:);

    [r, ~] = size(C.right_cup_bout);
    for i=1:1:r
        if C.right_cup_bout(i, 2) - (before_onset/1000) < 0
        elseif C.right_cup_bout(i, 2) + (after_onset/1000) < 300
            N = C.right_cup_bout(i, 2);
            [~, ans] = (min(abs(time - N)));
            target_dFF_ri_cup_out_C = dFF_3CT(2, ans-before_onset:ans+after_onset);
            zb_ri_cup_out_C = mean(target_dFF_ri_cup_out_C(:, 1:before_onset));
            zsd_ri_cup_out_C = std(target_dFF_ri_cup_out_C(:, 1:before_onset));
            zall_ri_cup_out_C(1, :) = (target_dFF_ri_cup_out_C(1, :) - zb_ri_cup_out_C)/zsd_ri_cup_out_C;
            dFF_ri_cup_out_C(i, :) = zall_ri_cup_out_C(1, :);
        else 
        end
    end
    dFF_ri_cup_out_C = dFF_ri_cup_out_C(~all(dFF_ri_cup_out_C == 0, 2),:);
end