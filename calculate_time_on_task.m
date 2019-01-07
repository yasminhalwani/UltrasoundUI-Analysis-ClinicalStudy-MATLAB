%% TIME ON TASK

% Patient - FZ
time_gaze_patient_fz = TIME_ON_TASK(find(index_input_gaze_AND_patient_task_AND_fz));
time_manual_patient_fz = TIME_ON_TASK(find(index_input_manual_AND_patient_task_AND_fz));

% Patient - DZ
time_gaze_patient_dz = TIME_ON_TASK(find(index_input_gaze_AND_patient_task_AND_dz));
time_manual_patient_dz = TIME_ON_TASK(find(index_input_manual_AND_patient_task_AND_dz));

% Phantom - FZ
time_gaze_phantom_fz = TIME_ON_TASK(find(index_input_gaze_AND_phantom_task_AND_fz));
time_manual_phantom_fz = TIME_ON_TASK(find(index_input_manual_AND_phantom_task_AND_fz));

% Phantom - DZ
time_gaze_phantom_dz = TIME_ON_TASK(find(index_input_gaze_AND_phantom_task_AND_dz));
time_manual_phantom_dz = TIME_ON_TASK(find(index_input_manual_AND_phantom_task_AND_dz));

% -----------------------------------
% Create a Struct
% -----------------------------------

f1 = 'gaze_patient_fz';
f2 = 'manual_patient_fz';
f3 = 'gaze_patient_dz';
f4 = 'manual_patient_dz';
f5 = 'gaze_phantom_fz';
f6 = 'manual_phantom_fz';
f7 = 'gaze_phantom_dz';
f8 = 'manual_phantom_dz';

v1 = time_gaze_patient_fz;
v2 = time_manual_patient_fz;
v3 = time_gaze_patient_dz;
v4 = time_manual_patient_dz;
v5 = time_gaze_phantom_fz;
v6 = time_manual_phantom_fz;
v7 = time_gaze_phantom_dz;
v8 = time_manual_phantom_dz;

time_on_task = struct(...
    f1, v1, ...
    f2, v2, ...
    f3, v3, ...
    f4, v4, ...
    f5, v5, ...
    f6, v6, ...
    f7, v7, ...
    f8, v8);

clear f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20;
clear v1 v2 v3 v4 v5 v6 v7 v8 v9 v19 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20;
clear time_gaze_patient_fz;
clear time_manual_patient_fz;
clear time_gaze_patient_dz;
clear time_manual_patient_dz;
clear time_gaze_phantom_fz;
clear time_manual_phantom_fz;
clear time_gaze_phantom_dz;
clear time_manual_phantom_dz;

% -----------------------------------
% Do T-Tests
% -----------------------------------

c = fieldnames(time_on_task);
disp('============== TIME ON TASK T-TESTS ==============');

p = ttest2(time_on_task.(c{1}), time_on_task.(c{2}));
text_to_disp = sprintf('%d, mean(%s) = %2.2f, mean(%s) = %2.2f', p, c{1}, mean(time_on_task.(c{1})), c{2}, mean(time_on_task.(c{2})));
disp(text_to_disp)

p = ttest2(time_on_task.(c{3}), time_on_task.(c{4}));
text_to_disp = sprintf('%d, mean(%s) = %2.2f, mean(%s) = %2.2f', p, c{3}, mean(time_on_task.(c{3})), c{4}, mean(time_on_task.(c{4})));
disp(text_to_disp)

p = ttest2(time_on_task.(c{5}), time_on_task.(c{6}));
text_to_disp = sprintf('%d, mean(%s) = %2.2f, mean(%s) = %2.2f', p, c{5}, mean(time_on_task.(c{5})), c{6}, mean(time_on_task.(c{6})));
disp(text_to_disp)


clear f p text_to_disp c
