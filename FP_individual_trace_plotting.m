%% Set color scheme & assign color gradient
c1 = uisetcolor; %first color
c2 = uisetcolor; %last color

%A-------------------------------------------------------------
%left chamber--------------------------------------------------
[r, ~] = size(dFF_le_ch_in_A);
color_num_le_ch_in_A = r; %gradient scale
[grad_le_ch_in_A,~]=colorGradient(c1, c2, color_num_le_ch_in_A);

[r, ~] = size(dFF_le_ch_out_A);
color_num_le_ch_out_A = r; %gradient scale
[grad_le_ch_out_A,~]=colorGradient(c1, c2, color_num_le_ch_out_A);

%left cup-------------------------------------------------------
[r, ~] = size(dFF_le_cup_in_A);
color_num_le_cup_in_A = r; %gradient scale
[grad_le_cup_in_A,~]=colorGradient(c1, c2, color_num_le_cup_in_A);

[r, ~] = size(dFF_le_cup_out_A);
color_num_le_cup_out_A = r; %gradient scale
[grad_le_cup_out_A,~]=colorGradient(c1, c2, color_num_le_cup_out_A);

%center---------------------------------------------------------
[r, ~] = size(dFF_center_in_A);
color_num_center_in_A = r; %gradient scale
[grad_center_in_A,~]=colorGradient(c1, c2, color_num_center_in_A);

[r, ~] = size(dFF_center_out_A);
color_num_center_out_A = r; %gradient scale
[grad_center_out_A,~]=colorGradient(c1, c2, color_num_center_out_A);

%right chamber ---------------------------------------------------
[r, ~] = size(dFF_ri_ch_in_A);
color_num_ri_ch_in_A = r; %gradient scale
[grad_ri_ch_in_A,~]=colorGradient(c1, c2, color_num_ri_ch_in_A);

[r, ~] = size(dFF_ri_ch_out_A);
color_num_ri_ch_out_A = r; %gradient scale
[grad_ri_ch_out_A,~]=colorGradient(c1, c2, color_num_ri_ch_out_A);

%right cup---------------------------------------------------------
[r, ~] = size(dFF_ri_cup_in_A);
color_num_ri_cup_in_A = r; %gradient scale
[grad_ri_cup_in_A,~]=colorGradient(c1, c2, color_num_ri_cup_in_A);

[r, ~] = size(dFF_ri_cup_out_A);
color_num_ri_cup_out_A = r; %gradient scale
[grad_ri_cup_out_A,~]=colorGradient(c1, c2, color_num_ri_cup_out_A);

%B------------------------------------------------------------------
%left chamber--------------------------------------------------
[r, ~] = size(dFF_le_ch_in_B);
color_num_le_ch_in_B = r; %gradient scale
[grad_le_ch_in_B,~]=colorGradient(c1, c2, color_num_le_ch_in_B);

[r, ~] = size(dFF_le_ch_out_B);
color_num_le_ch_out_B = r; %gradient scale
[grad_le_ch_out_B,~]=colorGradient(c1, c2, color_num_le_ch_out_B);

%left cup-------------------------------------------------------
[r, ~] = size(dFF_le_cup_in_B);
color_num_le_cup_in_B = r; %gradient scale
[grad_le_cup_in_B,~]=colorGradient(c1, c2, color_num_le_cup_in_B);

[r, ~] = size(dFF_le_cup_out_B);
color_num_le_cup_out_B = r; %gradient scale
[grad_le_cup_out_B,~]=colorGradient(c1, c2, color_num_le_cup_out_B);

%center---------------------------------------------------------
[r, ~] = size(dFF_center_in_B);
color_num_center_in_B = r; %gradient scale
[grad_center_in_B,~]=colorGradient(c1, c2, color_num_center_in_B);

[r, ~] = size(dFF_center_out_B);
color_num_center_out_B = r; %gradient scale
[grad_center_out_B,~]=colorGradient(c1, c2, color_num_center_out_B);

%right chamber ---------------------------------------------------
[r, ~] = size(dFF_ri_ch_in_B);
color_num_ri_ch_in_B = r; %gradient scale
[grad_ri_ch_in_B,~]=colorGradient(c1, c2, color_num_ri_ch_in_B);

[r, ~] = size(dFF_ri_ch_out_B);
color_num_ri_ch_out_B = r; %gradient scale
[grad_ri_ch_out_B,~]=colorGradient(c1, c2, color_num_ri_ch_out_B);

%right cup---------------------------------------------------------
[r, ~] = size(dFF_ri_cup_in_B);
color_num_ri_cup_in_B = r; %gradient scale
[grad_ri_cup_in_B,~]=colorGradient(c1, c2, color_num_ri_cup_in_B);

[r, ~] = size(dFF_ri_cup_out_B);
color_num_ri_cup_out_B = r; %gradient scale
[grad_ri_cup_out_B,~]=colorGradient(c1, c2, color_num_ri_cup_out_B);

%C-------------------------------------------------------------------
if assay_type == 'se_pr'
else
    %left chamber--------------------------------------------------
    [r, ~] = size(dFF_le_ch_in_C);
    color_num_le_ch_in_C = r; %gradient scale
    [grad_le_ch_in_C,~]=colorGradient(c1, c2, color_num_le_ch_in_C);

    [r, ~] = size(dFF_le_ch_out_C);
    color_num_le_ch_out_C = r; %gradient scale
    [grad_le_ch_out_C,~]=colorGradient(c1, c2, color_num_le_ch_out_C);

    %left cup-------------------------------------------------------
    [r, ~] = size(dFF_le_cup_in_C);
    color_num_le_cup_in_C = r; %gradient scale
    [grad_le_cup_in_C,~]=colorGradient(c1, c2, color_num_le_cup_in_C);

    [r, ~] = size(dFF_le_cup_out_C);
    color_num_le_cup_out_C = r; %gradient scale
    [grad_le_cup_out_C,~]=colorGradient(c1, c2, color_num_le_cup_out_C);

    %center---------------------------------------------------------
    [r, ~] = size(dFF_center_in_C);
    color_num_center_in_C = r; %gradient scale
    [grad_center_in_C,~]=colorGradient(c1, c2, color_num_center_in_C);

    [r, ~] = size(dFF_center_out_C);
    color_num_center_out_C = r; %gradient scale
    [grad_center_out_C,~]=colorGradient(c1, c2, color_num_center_out_C);

    %right chamber ---------------------------------------------------
    [r, ~] = size(dFF_ri_ch_in_C);
    color_num_ri_ch_in_C = r; %gradient scale
    [grad_ri_ch_in_C,~]=colorGradient(c1, c2, color_num_ri_ch_in_C);

    [r, ~] = size(dFF_ri_ch_out_C);
    color_num_ri_ch_out_C = r; %gradient scale
    [grad_ri_ch_out_C,~]=colorGradient(c1, c2, color_num_ri_ch_out_C);

    %right cup---------------------------------------------------------
    [r, ~] = size(dFF_ri_cup_in_C);
    color_num_ri_cup_in_C = r; %gradient scale
    [grad_ri_cup_in_C,~]=colorGradient(c1, c2, color_num_ri_cup_in_C);

    [r, ~] = size(dFF_ri_cup_out_C);
    color_num_ri_cup_out_C = r; %gradient scale
    [grad_ri_cup_out_C,~]=colorGradient(c1, c2, color_num_ri_cup_out_C);
end

%% set peribehavior time
[~, c] = size(dFF_le_cup_in_A);
max_time = 0.00098303996*c;
peri_time = [0.00098303996:0.00098303996:max_time];
peri_time = peri_time - before_onset/1000;

%% Plot individual trace_A

figure(1)
%left chamber-------------------------------------------------------
subplot(2, 5, 1)
i=1;
[r, ~] = size(dFF_le_ch_in_A);
while i<=r
pl = plot(peri_time, dFF_le_ch_in_A(i, :),'LineWidth',2); hold on
pl.Color = grad_le_ch_in_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 6)
i=1;
[r, ~] = size(dFF_le_ch_out_A);
while i<=r
pl = plot(peri_time, dFF_le_ch_out_A(i, :),'LineWidth',2); hold on
pl.Color = grad_le_ch_out_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%left cup----------------------------------------------------------

subplot(2, 5, 2)
i=1;
[r, ~] = size(dFF_le_cup_in_A);
while i<=r
pl = plot(peri_time, dFF_le_cup_in_A(i, :),'LineWidth',2); hold on
pl.Color = grad_le_cup_in_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 7)
i=1;
[r, ~] = size(dFF_le_cup_out_A);
while i<=r
pl = plot(peri_time, dFF_le_cup_out_A(i, :),'LineWidth',2); hold on
pl.Color = grad_le_cup_out_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%center-----------------------------------------------------------
subplot(2, 5, 3)
i=1;
[r, ~] = size(dFF_center_in_A);
while i<=r
pl = plot(peri_time, dFF_center_in_A(i, :),'LineWidth',2); hold on
pl.Color = grad_center_in_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 8)
i=1;
[r, ~] = size(dFF_center_out_A);
while i<=r
pl = plot(peri_time, dFF_center_out_A(i, :),'LineWidth',2); hold on
pl.Color = grad_center_out_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%right chamber------------------------------------------------------
subplot(2, 5, 4)
i=1;
[r, ~] = size(dFF_ri_ch_in_A);
while i<=r
pl = plot(peri_time, dFF_ri_ch_in_A(i, :),'LineWidth',2); hold on
pl.Color = grad_ri_ch_in_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 9)
i=1;
[r, ~] = size(dFF_ri_ch_out_A);
while i<=r
pl = plot(peri_time, dFF_ri_ch_out_A(i, :),'LineWidth',2); hold on
pl.Color = grad_ri_ch_out_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%right cup-----------------------------------------------------------
subplot(2, 5, 5)
i=1;
[r, ~] = size(dFF_ri_cup_in_A);
while i<=r
pl = plot(peri_time, dFF_ri_cup_in_A(i, :),'LineWidth',2); hold on
pl.Color = grad_ri_cup_in_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 10)
i=1;
[r, ~] = size(dFF_ri_cup_out_A);
while i<=r
pl = plot(peri_time, dFF_ri_cup_out_A(i, :),'LineWidth',2); hold on
pl.Color = grad_ri_cup_out_A(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%% Plot individual trace_B

figure(2)
%left chamber-------------------------------------------------------
subplot(2, 5, 1)
i=1;
[r, ~] = size(dFF_le_ch_in_B);
while i<=r
pl = plot(peri_time, dFF_le_ch_in_B(i, :),'LineWidth',2); hold on
pl.Color = grad_le_ch_in_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 6)
i=1;
[r, ~] = size(dFF_le_ch_out_B);
while i<=r
pl = plot(peri_time, dFF_le_ch_out_B(i, :),'LineWidth',2); hold on
pl.Color = grad_le_ch_out_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%left cup----------------------------------------------------------

subplot(2, 5, 2)
i=1;
[r, ~] = size(dFF_le_cup_in_B);
while i<=r
pl = plot(peri_time, dFF_le_cup_in_B(i, :),'LineWidth',2); hold on
pl.Color = grad_le_cup_in_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 7)
i=1;
[r, ~] = size(dFF_le_cup_out_B);
while i<=r
pl = plot(peri_time, dFF_le_cup_out_B(i, :),'LineWidth',2); hold on
pl.Color = grad_le_cup_out_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%center-----------------------------------------------------------
subplot(2, 5, 3)
i=1;
[r, ~] = size(dFF_center_in_B);
while i<=r
pl = plot(peri_time, dFF_center_in_B(i, :),'LineWidth',2); hold on
pl.Color = grad_center_in_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 8)
i=1;
[r, ~] = size(dFF_center_out_B);
while i<=r
pl = plot(peri_time, dFF_center_out_B(i, :),'LineWidth',2); hold on
pl.Color = grad_center_out_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%right chamber------------------------------------------------------
subplot(2, 5, 4)
i=1;
[r, ~] = size(dFF_ri_ch_in_B);
while i<=r
pl = plot(peri_time, dFF_ri_ch_in_B(i, :),'LineWidth',2); hold on
pl.Color = grad_ri_ch_in_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 9)
i=1;
[r, ~] = size(dFF_ri_ch_out_B);
while i<=r
pl = plot(peri_time, dFF_ri_ch_out_B(i, :),'LineWidth',2); hold on
pl.Color = grad_ri_ch_out_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%right cup-----------------------------------------------------------
subplot(2, 5, 5)
i=1;
[r, ~] = size(dFF_ri_cup_in_B);
while i<=r
pl = plot(peri_time, dFF_ri_cup_in_B(i, :),'LineWidth',2); hold on
pl.Color = grad_ri_cup_in_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

subplot(2, 5, 10)
i=1;
[r, ~] = size(dFF_ri_cup_out_B);
while i<=r
pl = plot(peri_time, dFF_ri_cup_out_B(i, :),'LineWidth',2); hold on
pl.Color = grad_ri_cup_out_B(i, :);
pl.Color(4) = 1/(1+(i-1)*0.1); 
i = i+1;
end

%% Plot individual trace_C

if assay_type == 'se_pr'
else
    figure(3)
    %left chamber-------------------------------------------------------
    subplot(2, 5, 1)
    i=1;
    [r, ~] = size(dFF_le_ch_in_C);
    while i<=r
    pl = plot(peri_time, dFF_le_ch_in_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_le_ch_in_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    subplot(2, 5, 6)
    i=1;
    [r, ~] = size(dFF_le_ch_out_C);
    while i<=r
    pl = plot(peri_time, dFF_le_ch_out_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_le_ch_out_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    %left cup----------------------------------------------------------

    subplot(2, 5, 2)
    i=1;
    [r, ~] = size(dFF_le_cup_in_C);
    while i<=r
    pl = plot(peri_time, dFF_le_cup_in_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_le_cup_in_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    subplot(2, 5, 7)
    i=1;
    [r, ~] = size(dFF_le_cup_out_C);
    while i<=r
    pl = plot(peri_time, dFF_le_cup_out_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_le_cup_out_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    %center-----------------------------------------------------------
    subplot(2, 5, 3)
    i=1;
    [r, ~] = size(dFF_center_in_C);
    while i<=r
    pl = plot(peri_time, dFF_center_in_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_center_in_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    subplot(2, 5, 8)
    i=1;
    [r, ~] = size(dFF_center_out_C);
    while i<=r
    pl = plot(peri_time, dFF_center_out_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_center_out_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    %right chamber------------------------------------------------------
    subplot(2, 5, 4)
    i=1;
    [r, ~] = size(dFF_ri_ch_in_C);
    while i<=r
    pl = plot(peri_time, dFF_ri_ch_in_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_ri_ch_in_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    subplot(2, 5, 9)
    i=1;
    [r, ~] = size(dFF_ri_ch_out_C);
    while i<=r
    pl = plot(peri_time, dFF_ri_ch_out_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_ri_ch_out_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    %right cup-----------------------------------------------------------
    subplot(2, 5, 5)
    i=1;
    [r, ~] = size(dFF_ri_cup_in_C);
    while i<=r
    pl = plot(peri_time, dFF_ri_cup_in_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_ri_cup_in_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end

    subplot(2, 5, 10)
    i=1;
    [r, ~] = size(dFF_ri_cup_out_C);
    while i<=r
    pl = plot(peri_time, dFF_ri_cup_out_C(i, :),'LineWidth',2); hold on
    pl.Color = grad_ri_cup_out_C(i, :);
    pl.Color(4) = 1/(1+(i-1)*0.1); 
    i = i+1;
    end
end



