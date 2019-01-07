disp_text = {'[PHANTOM, FZ: GAZE vs. MANUAL]', '[PHANTOM, DZ: GAZE vs. MANUAL]', '[PHANTOM, GAZE: FZ vs. DZ]', '[PHANTOM, MANUAL: FZ vs. DZ]', ...
    '[PATIENT, FZ: GAZE vs. MANUAL]', '[PATIENT, DZ: GAZE vs. MANUAL]', '[PATIENT, GAZE: FZ vs. DZ]', '[PATIENT, MANUAL: FZ vs. DZ]'};

S1_structs = struct( ...
    'S1', EMDAT_values_gaze_phantom_fz, ...
    'S2', EMDAT_values_gaze_phantom_dz, ...
    'S3', EMDAT_values_gaze_phantom_fz, ...
    'S4', EMDAT_values_manual_phantom_fz, ...
    'S5', EMDAT_values_gaze_patient_fz, ...
    'S6', EMDAT_values_gaze_patient_dz, ...
    'S7', EMDAT_values_gaze_patient_fz, ...
    'S8', EMDAT_values_manual_patient_fz);

S2_structs = struct( ...
    'S1', EMDAT_values_manual_phantom_fz, ...
    'S2', EMDAT_values_manual_phantom_dz, ...
    'S3', EMDAT_values_gaze_phantom_dz, ...
    'S4', EMDAT_values_manual_phantom_dz, ...
    'S5', EMDAT_values_manual_patient_fz, ...
    'S6', EMDAT_values_manual_patient_dz, ...
    'S7', EMDAT_values_gaze_patient_dz, ...
    'S8', EMDAT_values_manual_patient_dz);

S1_names = fieldnames(S1_structs);
S2_names = fieldnames(S2_structs);

for i = 1: size(S1_names, 1)
    
    text = sprintf('\n============== SIGNIFICANT T-TEST VALUES %s ==============', disp_text{i});
    disp(text);

    S1 = S1_structs.(S1_names{i});
    S2 = S2_structs.(S2_names{i});
    
    disp('=========== CORRELATIONS ===========');
    disp(S1_names{i})
    for f1 = fieldnames(S1)'

        for f2 = fieldnames(S1)'

            [rho, p] = corr(S1.(f1{1}), S1.(f2{1}), 'type', 'Pearson');

            if (p <= 0.05)
                text_to_disp = sprintf('(%24s, %24s) = %f', f1{1}, f2{1}, p);
%                 disp(text_to_disp);
            end

        end

    end
    
    disp(S2_names{i})
    for f1 = fieldnames(S2)'

        for f2 = fieldnames(S2)'

            [rho, p] = corr(S2.(f1{1}), S2.(f2{1}), 'type', 'Pearson');

            if (p <= 0.05)
                text_to_disp = sprintf('(%24s, %24s) = %f', f1{1}, f2{1}, p);
%                 disp(text_to_disp);
            end

        end

    end

    disp('=========== T-TESTS ===========');
    
    sig_t = [];
    
    for f = fieldnames(S1)'

        [h, p] = ttest2(S1.(f{1}), S2.(f{1}));

        if (h == 1)
%             sig_t = [sig_t; f{1} p mean(S1.(f{1})) mean(S2.(f{1}))];
            text_to_disp = sprintf('%24s. p-value = %1.5f, Means = %7.6f, %7.6f', f{1}, p, mean(S1.(f{1})), mean(S2.(f{1})));
            disp(text_to_disp);
        end

    end

end

clear S f1 f2 rho p disp_text S1_structs S2_structs S1_names S2_names  i text f text_to_disp S1 S2