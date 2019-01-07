run = 1;

exception_csv_source_file_names = {''};

if P ~= 10
    csv_source_file_name = sprintf('C:\\Users\\Yasmin\\Google Drive\\MASc Thesis\\User Studies\\04 Clinical\\Collected Data\\Gazepoint Capture\\capture\\result\\P%d_fixations.csv', P);
else
    exception_csv_source_file_names = {sprintf('C:\\Users\\Yasmin\\Google Drive\\MASc Thesis\\User Studies\\04 Clinical\\Collected Data\\Gazepoint Capture\\capture\\result\\P101_fixations.csv'),
    sprintf('C:\\Users\\Yasmin\\Google Drive\\MASc Thesis\\User Studies\\04 Clinical\\Collected Data\\Gazepoint Capture\\capture\\result\\P102_fixations.csv')};
end

for k = 1:(size(exception_csv_source_file_names, 1))
    
    if size(exception_csv_source_file_names, 1) > 1
        csv_source_file_name = exception_csv_source_file_names{k};
        if k == 1
            P = 101;
        end
        
        if k == 2
            P = 102;
        end
    end
    
    M = csvread(csv_source_file_name, 1, 0);
    CNT	= M(:,1);
    TIME = M(:,2);
    FPOGX = M(:,3);
    FPOGY = M(:,4);
    FPOGS = M(:,5);
    FPOGD = M(:,6);
    FPOGID = M(:,7);
    FPOGV = M(:,8);
    LPD = M(:,9);
    LPS = M(:,10);
    LPV = M(:,11);
    RPD = M(:,12);
    RPS = M(:,13);
    RPV = M(:,14);

    SEG_RECORDS = {};

    if (run == 1)
        %% initialize strings
        record_strings = TASK(1:30);

        if P ~= 101 || P ~= 102
            loop_start = 1;
            loop_end = size(record_strings,1);
            index_ppt_number = PPT_NUM(:) == P;
        end
        if P == 101
            loop_start = 1;
            loop_end = 20;
            index_ppt_number = PPT_NUM(:) == 10;
        end
        if P == 102
            loop_start = 21;
            loop_end = size(record_strings,1);
            index_ppt_number = PPT_NUM(:) == 10;
        end

    %% Run pre-tests on data:
        if (P~= 102 && P ~= 101)  %% IMPORTANT NOTE: values in P10 are checked manually

            fix_start_sorted = issorted(FIX_ID_START(find(PPT_NUM(:) == P)));
            fix_end_sorted = issorted(FIX_ID_END(find(PPT_NUM(:) == P)));

            if (fix_start_sorted)
%                 disp('FIX_ID_START is sorted.');
            else
                disp('Error in the order of FIX_ID_START. Please double check!');
                run = 0;
            end

            if (fix_end_sorted)
%                 disp('FIX_ID_END is sorted.');
            else
                disp('Error in the order of FIX_ID_END. Please double check!');
                run = 0;
            end

        end
    end

    if run == 1
        loop_count = 1;
        for i = loop_start: loop_end
            index_task = strcmp(TASK, record_strings(i));
            index_task_AND_ppt_number = and(index_ppt_number, index_task);

            target_index = find(index_task_AND_ppt_number);

            if FIX_ID_START(target_index) ~= -1

                time_start = int32(TIME(find(FPOGID(:) == FIX_ID_START(target_index))) * 1000);
                time_end = int32(TIME(find(FPOGID(:) == FIX_ID_END(target_index))) * 1000);

                TIME_ON_TASK(target_index) = time_end - time_start;

                SEG_RECORDS{loop_count} = sprintf('%s\t%s\t%d\t%d', char(record_strings(i)), char(record_strings(i)), time_start, time_end);

                loop_count = loop_count + 1;
            end
        end


        %% writing to file

        file_name = sprintf('P%d_TIME.seg', P);

        fileID = fopen(file_name,'wt');
        for i = 1:size(SEG_RECORDS,2)
            fprintf(fileID, '%s\n',char(SEG_RECORDS{i}));
        end
        fclose(fileID);

        message = sprintf('Seg file for P%d is generated.', P);
%         disp(message);

    end
end
