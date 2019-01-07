disp('###################');
disp('####### ALL #######');
disp('###################');

issues_AND_input_gaze = and(index_any_issue_with_trial, index_input_method_g);

percentage = sum(issues_AND_input_gaze) / sum(index_input_method_g);
text = sprintf('Percentage of issues (any) in eye gaze input: %2.2f%%', percentage *100);
disp(text);
% ---------------------------------
disp('Sources of issues:');

input_gaze_AND_calibration_issue = and(index_input_method_g, CALIBRATION_ISSUE(:));
percentage = sum(input_gaze_AND_calibration_issue) / sum(issues_AND_input_gaze);
text = sprintf('1. Calibration: %2.2f%%', percentage * 100);
disp(text);

input_gaze_AND_gaze_small_distances = and(index_input_method_g, GAZE_FOR_SMALL_DISTANCE(:));
percentage = sum(input_gaze_AND_gaze_small_distances) / sum(issues_AND_input_gaze);
text = sprintf('2. Forced Gaze on a Small Distance: %2.2f%%', percentage * 100);
disp(text);

input_gaze_AND_multiple_trials_issue = and(index_input_method_g, MULTIPLE_TRIALS(:));
percentage = sum(input_gaze_AND_multiple_trials_issue) / sum(issues_AND_input_gaze);
text = sprintf('3. Multiple Trials: %2.2f%%', percentage * 100);
disp(text);

input_gaze_AND_forced_gaze_issue = and(index_input_method_g, FORCED_GAZE(:));
percentage = sum(input_gaze_AND_forced_gaze_issue) / sum(issues_AND_input_gaze);
text = sprintf('4. Forced Gaze: %2.2f%%', percentage * 100);
disp(text);

input_gaze_AND_roi_lost_issue = and(index_input_method_g, ROI_LOST_BEFORE_CAPTURE(:));
percentage = sum(input_gaze_AND_roi_lost_issue) / sum(issues_AND_input_gaze);
text = sprintf('5. ROI Lost Before Capture: %2.2f%%', percentage * 100);
disp(text);

% ---------------------------------
issues_AND_input_manual = and(index_any_issue_with_trial, index_input_method_m);

percentage = sum(issues_AND_input_manual) / sum(index_input_method_m);
text = sprintf('Percentage of issues (any) in manual input: %2.2f%%', percentage *100);
disp(text);
% ---------------------------------
disp('Sources of issues:');

input_manual_AND_multiple_trials_issue = and(index_input_method_m, MULTIPLE_TRIALS(:));
percentage = sum(input_manual_AND_multiple_trials_issue) / sum(issues_AND_input_manual);
text = sprintf('1. Multiple Trials: %2.2f%%', percentage * 100);
disp(text);

input_manual_AND_roi_lost_issue = and(index_input_method_m, ROI_LOST_BEFORE_CAPTURE(:));
percentage = sum(input_manual_AND_roi_lost_issue) / sum(issues_AND_input_manual);
text = sprintf('2. ROI Lost Before Capture: %2.2f%%', percentage * 100);
disp(text);

% ---------------------------------
disp('###################');
disp('##### PHANTOM #####');
disp('###################');

dz_phantom_AND_phantom_gaze = and(index_phantom_tasks_designed_for_dz, index_gaze_phantom_task);
dz_phantom_AND_phantom_gaze_AND_input_manual = and(dz_phantom_AND_phantom_gaze, index_input_method_m);

percentage = sum(dz_phantom_AND_phantom_gaze_AND_input_manual) / sum(dz_phantom_AND_phantom_gaze);
text = sprintf('Phantom, Gaze, DZ: Eye gaze was NOT used: %2.2f%%', percentage * 100);
disp(text);

% ---------------------------------

dz_phantom_AND_phantom_gaze_AND_issues = and(dz_phantom_AND_phantom_gaze, index_any_issue_with_trial);

percentage = sum(dz_phantom_AND_phantom_gaze_AND_issues) / sum(dz_phantom_AND_phantom_gaze);
text = sprintf('Phantom, Gaze, DZ: Eye gaze was used, with issues: %2.2f%%', percentage * 100);
disp(text);

disp('Sources of issues:');

dz_phantom_AND_phantom_gaze_AND_calibration_issue = and(dz_phantom_AND_phantom_gaze, CALIBRATION_ISSUE(:));
percentage = sum(dz_phantom_AND_phantom_gaze_AND_calibration_issue) / sum(dz_phantom_AND_phantom_gaze_AND_issues);
text = sprintf('1. Calibration: %2.2f%%', percentage * 100);
disp(text);

dz_phantom_AND_phantom_gaze_AND_gaze_for_small_distance = and(dz_phantom_AND_phantom_gaze, GAZE_FOR_SMALL_DISTANCE(:));
percentage = sum(dz_phantom_AND_phantom_gaze_AND_gaze_for_small_distance) / sum(dz_phantom_AND_phantom_gaze_AND_issues);
text = sprintf('2. Forced Gaze on a Small Distance: %2.2f%%', percentage * 100);
disp(text);

dz_phantom_AND_phantom_gaze_AND_multiple_trials_issue = and(dz_phantom_AND_phantom_gaze, MULTIPLE_TRIALS(:));
percentage = sum(dz_phantom_AND_phantom_gaze_AND_multiple_trials_issue) / sum(dz_phantom_AND_phantom_gaze_AND_issues);
text = sprintf('3. Multiple Trials: %2.2f%%', percentage * 100);
disp(text);

dz_phantom_AND_phantom_gaze_AND_forced_gaze_issue = and(dz_phantom_AND_phantom_gaze, FORCED_GAZE(:));
percentage = sum(dz_phantom_AND_phantom_gaze_AND_forced_gaze_issue) / sum(dz_phantom_AND_phantom_gaze_AND_issues);
text = sprintf('4. Forced Gaze: %2.2f%%', percentage * 100);
disp(text);

dz_phantom_AND_phantom_gaze_AND_roi_lost = and(dz_phantom_AND_phantom_gaze, ROI_LOST_BEFORE_CAPTURE(:));
percentage = sum(dz_phantom_AND_phantom_gaze_AND_roi_lost) / sum(dz_phantom_AND_phantom_gaze_AND_issues);
text = sprintf('5. ROI Lost Before Capture: %2.2f%%', percentage * 100);
disp(text);


% ---------------------------------
% ---------------------------------

fz_phantom_AND_phantom_gaze = and(index_phantom_tasks_designed_for_fz, index_gaze_phantom_task);
fz_phantom_AND_phantom_gaze_AND_input_manual = and(fz_phantom_AND_phantom_gaze, index_input_method_m);

percentage = sum(fz_phantom_AND_phantom_gaze_AND_input_manual) / sum(fz_phantom_AND_phantom_gaze);
text = sprintf('Phantom, Gaze, FZ: Eye gaze was NOT used: %2.2f%%', percentage * 100);
disp(text);

% ---------------------------------
disp('###################');
disp('##### PATIENT #####');
disp('###################');

patient_tasks_AND_input_gaze = and(index_all_patient_tasks, index_input_method_g);
patient_tasks_AND_input_gaze_AND_method_fz = and(patient_tasks_AND_input_gaze, index_zoom_method_fz);
patient_tasks_AND_input_gaze_AND_method_dz = and(patient_tasks_AND_input_gaze, index_zoom_method_dz);
patient_tasks_AND_input_gaze_AND_method_mix = and(patient_tasks_AND_input_gaze, index_zoom_method_mix);

percentage = sum(patient_tasks_AND_input_gaze_AND_method_fz) / sum(patient_tasks_AND_input_gaze);
text = sprintf('Patient, gaze, FZ: %2.2f%%', percentage);
disp(text);

percentage = sum(patient_tasks_AND_input_gaze_AND_method_dz) / sum(patient_tasks_AND_input_gaze);
text = sprintf('Patient, gaze, DZ: %2.2f%%', percentage);
disp(text);

percentage = sum(patient_tasks_AND_input_gaze_AND_method_mix) / sum(patient_tasks_AND_input_gaze);
text = sprintf('Patient, gaze, MIX: %2.2f%%', percentage);
disp(text);

% ---------------------------------

patient_tasks_AND_input_manual = and(index_all_patient_tasks, index_input_method_m);
patient_tasks_AND_input_manual_AND_method_fz = and(patient_tasks_AND_input_manual, index_zoom_method_fz);
patient_tasks_AND_input_manual_AND_method_dz = and(patient_tasks_AND_input_manual, index_zoom_method_dz);
patient_tasks_AND_input_manual_AND_method_mix = and(patient_tasks_AND_input_manual, index_zoom_method_mix);

percentage = sum(patient_tasks_AND_input_manual_AND_method_fz) / sum(patient_tasks_AND_input_manual);
text = sprintf('Patient, manual, FZ: %2.2f%%', percentage);
disp(text);

percentage = sum(patient_tasks_AND_input_manual_AND_method_dz) / sum(patient_tasks_AND_input_manual);
text = sprintf('Patient, manual, DZ: %2.2f%%', percentage);
disp(text);

percentage = sum(patient_tasks_AND_input_manual_AND_method_mix) / sum(patient_tasks_AND_input_manual);
text = sprintf('Patient, manual, MIX: %2.2f%%', percentage);
disp(text);

% ---------------------------------

gaze_patient_tasks_AND_input_manual = and(index_gaze_patient_task, index_input_method_m);

percentage = sum(gaze_patient_tasks_AND_input_manual) / sum(index_gaze_patient_task);
text = sprintf('Percentage of times gaze was NOT used in gaze patient tasks: %2.2f%%', percentage);
disp(text);

disp('Alternative manual input to gaze patient tasks:')

gaze_patient_tasks_AND_input_manual_AND_fz = and(gaze_patient_tasks_AND_input_manual, index_zoom_method_fz);
percentage = sum(gaze_patient_tasks_AND_input_manual_AND_fz) / sum(gaze_patient_tasks_AND_input_manual);
text = sprintf('1. Manual FZ: %2.2f%%', percentage);
disp(text);

gaze_patient_tasks_AND_input_manual_AND_dz = and(gaze_patient_tasks_AND_input_manual, index_zoom_method_dz);
percentage = sum(gaze_patient_tasks_AND_input_manual_AND_dz) / sum(gaze_patient_tasks_AND_input_manual);
text = sprintf('2. Manual DZ: %2.2f%%', percentage);
disp(text);

% ---------------------------------

