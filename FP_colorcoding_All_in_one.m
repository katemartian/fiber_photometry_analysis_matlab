%% To use this, you need "TCT_data_process.m" in your directory
%% FP Data Import
data_path=uigetdir('F:\Data Backup\7. Fibre photometry');
data = TDTbin2mat(data_path);
time = (1:length(data.streams.x470A.data))/data.streams.x470A.fs;
Alldata = [time; data.streams.x405A.data; data.streams.x470A.data];
fs = data.streams.x470A.fs;

%% Choose assay type
prompt = ['Social recognition = 1', '\nSexual preference = 2', '\nSocial priority = 3\n'];
name=input(prompt,'s');

if name == '1'
    assay_type = 'so_re';
elseif name == '2'
    assay_type = 'se_pr';
else
    assay_type = 'so_pr';
end

%% Extract Epocs

if assay_type == 'so_re'
    epocs_onset = [1 2 3 4];
elseif assay_type == 'se_pr'
    epocs_onset = [1 2 3];
else
    epocs_onset = [1 2 3 4];
end

[~, c] = size(epocs_onset);
i=1;

while i<=c
    N = epocs_onset(1, i);
    target_epocs = data.epocs.PC0_.onset(N, 1);
    %get specific time of chosen epochs.
    [~, ans] = (min(abs(time - target_epocs)));
    %get nearest acquired timepoint to chosen epocs. ans=column number.
    target_epocs_window = Alldata(1:3, ans:ans+fs*300);
    %assign time window around epochs. 1 = 0.001 sec.
    bls=polyfit(target_epocs_window(2, :),target_epocs_window(3, :),1);
    Y_fit_all = bls(1) .* target_epocs_window(2, :) + bls(2);
    Y_dF_all = target_epocs_window(3, :) - Y_fit_all;
    dFF = 100*(Y_dF_all)./Y_fit_all;
    %calculate dFF according to Lerner paper.
    
    dFF_3CT(i, :) = dFF(1, :);
    %stack each epocs
  
    i = i+1;
end

% set epocs time
[r, c] = size(dFF_3CT);
max_time = 0.00098303996*c;
time = [0.00098303996:0.00098303996:max_time];

%% Call ethovision data & TCT data process
% choose all raw data
% All position data will be stored in struct A, B, or C

[file,path] = uigetfile('*.*',  'All Files (*.*)','MultiSelect','on');

[~, c] = size(file);
if c == 2
    trial1 = fullfile(path, string(file(:, 1)));
    trial2 = fullfile(path, string(file(:, 2)));
    A = importdata(trial1);
    B = importdata(trial2);
    trial1_raw = A.data(:, 10:14);
    trial2_raw = B.data(:, 10:14);
    [A.left_chamber_bout, A.center_bout, A.right_chamber_bout, A.left_cup_bout, A.right_cup_bout] = TCT_data_process(trial1_raw);
    [B.left_chamber_bout, B.center_bout, B.right_chamber_bout, B.left_cup_bout, B.right_cup_bout] = TCT_data_process(trial2_raw);
else 
    trial1 = fullfile(path, string(file(:, 1)));
    trial2 = fullfile(path, string(file(:, 2)));
    trial3 = fullfile(path, string(file(:, 3)));
    A = importdata(trial1);
    B = importdata(trial2);
    C = importdata(trial3);
    trial1_raw = A.data(:, 10:14);
    trial2_raw = B.data(:, 10:14);
    trial3_raw = C.data(:, 10:14);
    [A.left_chamber_bout, A.center_bout, A.right_chamber_bout, A.left_cup_bout, A.right_cup_bout] = TCT_data_process(trial1_raw);
    [B.left_chamber_bout, B.center_bout, B.right_chamber_bout, B.left_cup_bout, B.right_cup_bout] = TCT_data_process(trial2_raw);
    [C.left_chamber_bout, C.center_bout, C.right_chamber_bout, C.left_cup_bout, C.right_cup_bout] = TCT_data_process(trial3_raw);
end

%% Assign cue color; change color scheme here if you want

female = 'm';
male = 'c';
social = 'c';
nonsocial = 'g';
novel_male = 'b';
familiar = 'c';

%% Assign cue position
if assay_type == 'se_pr'
    disp('left is')
    disp(B.textdata(34, 2))
    disp('right is')
    disp(B.textdata(35, 2))
else
    disp('left is')
    disp(C.textdata(34, 2))
    disp('right is')
    disp(C.textdata(35, 2))
end
    

if assay_type == 'so_re'
    prompt = ['\n','\[1]','\nNS vs S', '\nN vs F', '\n', '\nor','\n', '\n[2]','\nS vs NS', '\nF vs N', '\n'];
    cue_position_mode=input(prompt,'s');
elseif assay_type == 'se_pr'
    prompt = ['\n','\[1]','\nM vs F', '\n', '\nor','\n', '\n[2]','\nF vs M', '\n'];
    cue_position_mode=input(prompt,'s');
else 
    prompt = ['\n','\[1]','\nNS vs F', '\nM vs F', '\n', '\nor','\n', '\n[2]','\nF vs NS', '\nF vs M', '\n'];
    cue_position_mode=input(prompt,'s');
end

if assay_type == 'so_re'
    if cue_position_mode == '1'
        B.leftcue = nonsocial;
        B.rightcue = social;
        C.leftcue = novel_male;
        C.rightcue = familiar;
        A.leftcue = novel_male;
        A.rightcue = familiar;        
    elseif cue_position_mode == '2'
        B.leftcue = social;
        B.rightcue = nonsocial;
        C.leftcue = familiar;
        C.rightcue = novel_male;
        A.leftcue = familiar;
        A.rightcue = novel_male;        
    end

elseif assay_type == 'se_pr'
    if cue_position_mode == '1'
        B.leftcue = male;
        B.rightcue = female;
        A.leftcue = male;
        A.rightcue = female;        
    elseif cue_position_mode == '2'
        B.leftcue = female;
        B.rightcue = male;
        A.leftcue = female;
        A.rightcue = male;        
    end
    
elseif assay_type == 'so_pr'
    if cue_position_mode == '1'
        B.leftcue = nonsocial;
        B.rightcue = female;
        C.leftcue = male;
        C.rightcue = female;
        A.leftcue = male;
        A.rightcue = female;
    elseif cue_position_mode == '2'
        B.leftcue = female;
        B.rightcue = nonsocial;
        C.leftcue = female;
        C.rightcue = male;
        A.leftcue = female;
        A.rightcue = male;        
    end
end

    
%% Any note?
prompt = 'Any Note?';
Note=input(prompt,'s');
if isempty(Note) == 1
    Note = 'No';
else
end

%% Assign Mouse ID & save
prompt = '\nMouse ID\n';
mouseid=input(prompt,'s');

if assay_type == 'se_pr'
    save(mouseid, 'A', 'B', 'dFF_3CT', 'time', 'assay_type', 'fs', 'Note');
else
    save(mouseid, 'A', 'B', 'C', 'dFF_3CT', 'time', 'assay_type', 'fs', 'Note');
end