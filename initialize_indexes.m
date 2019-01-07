%-----------------------------------------------------------------------------

% INDEXES: ZOOM_METHOD

index_zoom_method_fz = [];
for i = 1:size(ZOOM_METHOD, 1)
index_zoom_method_fz = [index_zoom_method_fz; strcmp(ZOOM_METHOD{i},{'FZ'})];
end

index_zoom_method_dz = [];
for i = 1:size(ZOOM_METHOD, 1)
index_zoom_method_dz = [index_zoom_method_dz; strcmp(ZOOM_METHOD{i},{'DZ'})];
end

index_zoom_method_mix = [];
for i = 1:size(ZOOM_METHOD, 1)
index_zoom_method_mix = [index_zoom_method_mix; strcmp(ZOOM_METHOD{i},{'MIX'})];
end

index_zoom_method_missed = [];
for i = 1:size(ZOOM_METHOD, 1)
index_zoom_method_missed = [index_zoom_method_missed; strcmp(ZOOM_METHOD{i},{'-1'})];
end
%-----------------------------------------------------------------------------

% INDEXES: INPUT_METHOD

index_input_method_g = [];
for i = 1:size(INPUT_METHOD, 1)
index_input_method_g = [index_input_method_g; strcmp(INPUT_METHOD{i},{'G'})];
end

index_input_method_m = [];
for i = 1:size(INPUT_METHOD, 1)
index_input_method_m = [index_input_method_m; strcmp(INPUT_METHOD{i},{'M'})];
end

%-----------------------------------------------------------------------------

% INDEXES: TASKS (Phantom Manual, Phantom Gaze, All Phantom)

index_gaze_phantom_task = [];
for i = 1:size(TASK, 1)
    G_PH_1 = strcmp(TASK{i},{'G_PH_1'});
    G_PH_2 = strcmp(TASK{i},{'G_PH_2'});
    G_PH_3 = strcmp(TASK{i},{'G_PH_3'});
    G_PH_4 = strcmp(TASK{i},{'G_PH_4'});
    G_PH_5 = strcmp(TASK{i},{'G_PH_5'});
    G_PH_6 = strcmp(TASK{i},{'G_PH_6'});
    G_PH_7 = strcmp(TASK{i},{'G_PH_7'});
    G_PH_8 = strcmp(TASK{i},{'G_PH_8'});
    G_PH_9 = strcmp(TASK{i},{'G_PH_9'});
    G_PH_10 = strcmp(TASK{i},{'G_PH_10'});
    
    if (G_PH_1 + G_PH_2 + G_PH_3 + G_PH_4 + G_PH_5 + G_PH_6 + G_PH_7 + G_PH_8 + G_PH_9 + G_PH_10 > 0)
        result = 1;
    else
        result = 0;
    end
    
    index_gaze_phantom_task = [index_gaze_phantom_task; result];
end

index_manual_phantom_task = [];
for i = 1:size(TASK, 1)
    M_PH_1 = strcmp(TASK{i},{'M_PH_1'});
    M_PH_2 = strcmp(TASK{i},{'M_PH_2'});
    M_PH_3 = strcmp(TASK{i},{'M_PH_3'});
    M_PH_4 = strcmp(TASK{i},{'M_PH_4'});
    M_PH_5 = strcmp(TASK{i},{'M_PH_5'});
    M_PH_6 = strcmp(TASK{i},{'M_PH_6'});
    M_PH_7 = strcmp(TASK{i},{'M_PH_7'});
    M_PH_8 = strcmp(TASK{i},{'M_PH_8'});
    M_PH_9 = strcmp(TASK{i},{'M_PH_9'});
    M_PH_10 = strcmp(TASK{i},{'M_PH_10'});
    
    if (M_PH_1 + M_PH_2 + M_PH_3 + M_PH_4 + M_PH_5 + M_PH_6 + M_PH_7 + M_PH_8 + M_PH_9 + M_PH_10 > 0)
        result = 1;
    else
        result = 0;
    end
    
    index_manual_phantom_task = [index_manual_phantom_task; result];
end

index_all_phantom_tasks = or(index_gaze_phantom_task, index_manual_phantom_task);
%-----------------------------------------------------------------------------

% INDEXES: TASKS (Patient Manual, Patient Gaze, All Patient)

index_gaze_patient_task = [];
for i = 1:size(TASK, 1)
    G_PA_1 = strcmp(TASK{i},{'G_PA_1'});
    G_PA_2 = strcmp(TASK{i},{'G_PA_2'});
    G_PA_3 = strcmp(TASK{i},{'G_PA_3'});
    G_PA_4 = strcmp(TASK{i},{'G_PA_4'});
    G_PA_5 = strcmp(TASK{i},{'G_PA_5'});
    
    if (G_PA_1 + G_PA_2 + G_PA_3 + G_PA_4 + G_PA_5 > 0)
        result = 1;
    else
        result = 0;
    end
    
    index_gaze_patient_task = [index_gaze_patient_task; result];
end

index_manual_patient_task = [];
for i = 1:size(TASK, 1)
    M_PA_1 = strcmp(TASK{i},{'M_PA_1'});
    M_PA_2 = strcmp(TASK{i},{'M_PA_2'});
    M_PA_3 = strcmp(TASK{i},{'M_PA_3'});
    M_PA_4 = strcmp(TASK{i},{'M_PA_4'});
    M_PA_5 = strcmp(TASK{i},{'M_PA_5'});

    if (M_PA_1 + M_PA_2 + M_PA_3 + M_PA_4 + M_PA_5 > 0)
        result = 1;
    else
        result = 0;
    end
    
    index_manual_patient_task = [index_manual_patient_task; result];
end

index_all_patient_tasks = or(index_gaze_patient_task, index_manual_patient_task);
%-----------------------------------------------------------------------------

% INDEXES: TASKS (Phantom, designed for FZ, designed for DZ)

index_phantom_tasks_designed_for_fz = [];
for i = 1:size(TASK, 1)
    G_PH_1 = strcmp(TASK{i},{'G_PH_1'});
    G_PH_2 = strcmp(TASK{i},{'G_PH_2'});
    G_PH_3 = strcmp(TASK{i},{'G_PH_3'});
    G_PH_4 = strcmp(TASK{i},{'G_PH_4'});
    G_PH_5 = strcmp(TASK{i},{'G_PH_5'});
    G_PH_6 = strcmp(TASK{i},{'G_PH_6'});
    M_PH_1 = strcmp(TASK{i},{'M_PH_1'});
    M_PH_2 = strcmp(TASK{i},{'M_PH_2'});
    M_PH_3 = strcmp(TASK{i},{'M_PH_3'});
    M_PH_4 = strcmp(TASK{i},{'M_PH_4'});
    M_PH_5 = strcmp(TASK{i},{'M_PH_5'});
    M_PH_6 = strcmp(TASK{i},{'M_PH_6'});
    
    if (G_PH_1 + G_PH_2 + G_PH_3 + G_PH_4 + G_PH_5 + G_PH_6 + ...
            M_PH_1 + M_PH_2 + M_PH_3 + M_PH_4 + M_PH_5 + M_PH_6 > 0)
        result = 1;
    else
        result = 0;
    end
    
    index_phantom_tasks_designed_for_fz = [index_phantom_tasks_designed_for_fz; result];
end

index_phantom_tasks_designed_for_dz = [];
for i = 1:size(TASK, 1)
    G_PH_7 = strcmp(TASK{i},{'G_PH_7'});
    G_PH_8 = strcmp(TASK{i},{'G_PH_8'});
    G_PH_9 = strcmp(TASK{i},{'G_PH_9'});
    G_PH_10 = strcmp(TASK{i},{'G_PH_10'});
    M_PH_7 = strcmp(TASK{i},{'M_PH_7'});
    M_PH_8 = strcmp(TASK{i},{'M_PH_8'});
    M_PH_9 = strcmp(TASK{i},{'M_PH_9'});
    M_PH_10 = strcmp(TASK{i},{'M_PH_10'});
    
    if (G_PH_7 + G_PH_8 + G_PH_9 + G_PH_10 + ...
            M_PH_7 + M_PH_8 + M_PH_9 + M_PH_10 > 0)
        result = 1;
    else
        result = 0;
    end
    
    index_phantom_tasks_designed_for_dz = [index_phantom_tasks_designed_for_dz; result];
end

%-----------------------------------------------------------------------------

% INDEXES: ISSUES WITH TRIALS

index_any_issue_with_trial = or(CALIBRATION_ISSUE(:), GAZE_FOR_SMALL_DISTANCE(:));
index_any_issue_with_trial = or(index_any_issue_with_trial(:), MULTIPLE_TRIALS(:));
index_any_issue_with_trial = or(index_any_issue_with_trial(:), FORCED_GAZE(:));
index_any_issue_with_trial = or(index_any_issue_with_trial(:), ROI_LOST_BEFORE_CAPTURE(:));
index_any_issue_with_trial = or(index_any_issue_with_trial(:), TIME_ON_TASK(:) == 0); % the missing trials

%-----------------------------------------------------------------------------

index_input_gaze_AND_patient_task = and(index_input_method_g, index_all_patient_tasks);
index_input_manual_AND_patient_task = and(index_input_method_m, index_all_patient_tasks);
index_input_gaze_AND_phantom_task = and(index_input_method_g, index_all_phantom_tasks);
index_input_manual_AND_phantom_task = and(index_input_method_m, index_all_phantom_tasks);

index_patient_task_AND_fz = and(index_all_patient_tasks, index_zoom_method_fz);
index_patient_task_AND_dz = and(index_all_patient_tasks, index_zoom_method_dz);
index_phantom_task_AND_fz = and(index_all_phantom_tasks, index_zoom_method_fz);
index_phantom_task_AND_dz = and(index_all_phantom_tasks, index_zoom_method_dz);

index_input_gaze_AND_patient_task_AND_fz = and(index_input_gaze_AND_patient_task, index_zoom_method_fz);
index_input_gaze_AND_patient_task_AND_dz = and(index_input_gaze_AND_patient_task, index_zoom_method_dz);
index_input_gaze_AND_phantom_task_AND_fz = and(index_input_gaze_AND_phantom_task, index_zoom_method_fz);
index_input_gaze_AND_phantom_task_AND_dz = and(index_input_gaze_AND_phantom_task, index_zoom_method_dz);

index_input_manual_AND_patient_task_AND_fz = and(index_input_manual_AND_patient_task, index_zoom_method_fz);
index_input_manual_AND_patient_task_AND_dz = and(index_input_manual_AND_patient_task, index_zoom_method_dz);
index_input_manual_AND_phantom_task_AND_fz = and(index_input_manual_AND_phantom_task, index_zoom_method_fz);
index_input_manual_AND_phantom_task_AND_dz = and(index_input_manual_AND_phantom_task, index_zoom_method_dz);