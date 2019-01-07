%% IMPORTANT NOTE: import data from FPOGID_segments.csv before running this code
%OR:

clear all
load('pre-analysis.mat')

for P = 1:10
    generate_seg_file_for_user
end

load_and_sort_gaze_features

% clearvars -except PPT_NUM TASK FIX_ID_START FIX_ID_END INPUT_METHOD ZOOM_METHOD GAZE_FOR_SMALL_DISTANCE CALIBRATION_ISSUE MULTIPLE_TRIALS FORCED_GAZE ROI_LOST_BEFORE_CAPTURE TIME_ON_TASK Sc_id abspathanglesrate eyemovementvelocity fixationrate length meanabspathangles meanfixationduration	meanpathdistance meanrelpathangles numfixations numsamples numsegments relpathanglesrate	stddevabspathangles	stddevfixationduration	stddevpathdistance	stddevrelpathangles	sumabspathangles sumfixationduration	sumpathdistance	sumrelpathangles

initialize_indexes

calculate_percentages

calculate_time_on_task

initialize_EMDAT_results_variables

initialize_EMDAT_structs

EMDAT_compute_correlations_and_t_tests

generate_222_ANOVA_input

clearvars -except PPT_NUM TASK FIX_ID_START FIX_ID_END INPUT_METHOD ZOOM_METHOD ...
    GAZE_FOR_SMALL_DISTANCE CALIBRATION_ISSUE MULTIPLE_TRIALS FORCED_GAZE ROI_LOST_BEFORE_CAPTURE TIME_ON_TASK EMDAT_values_all ...
    EMDAT_values_gaze_patient_dz EMDAT_values_gaze_patient_fz EMDAT_values_gaze_phantom_dz EMDAT_values_gaze_phantom_fz EMDAT_values_manual_patient_dz ...
    EMDAT_values_manual_patient_fz EMDAT_values_manual_phantom_dz EMDAT_values_manual_phantom_fz time_on_task M TECHNIQUE TARGET TRIAL

