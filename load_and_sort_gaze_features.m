%% Sort and re-generate gazepoint_features.tsv file

GAZE_FEATURES = tdfread('C:\Users\Yasmin\Desktop\EMDAT-EMDATgazepoint\src\gazepoint_data\outputfolder\gazepoint_features_clinical.tsv');

Sc_id_old = GAZE_FEATURES.Sc_id;
abspathanglesrate_old = GAZE_FEATURES.abspathanglesrate;
eyemovementvelocity_old = GAZE_FEATURES.eyemovementvelocity;
fixationrate_old = GAZE_FEATURES.fixationrate;
length_old = GAZE_FEATURES.length;
meanabspathangles_old = GAZE_FEATURES.meanabspathangles;
meanfixationduration_old = GAZE_FEATURES.meanfixationduration;
meanpathdistance_old = GAZE_FEATURES.meanpathdistance;
meanrelpathangles_old = GAZE_FEATURES.meanrelpathangles;
numfixations_old = GAZE_FEATURES.numfixations;
numsamples_old = GAZE_FEATURES.numsamples;
numsegments_old = GAZE_FEATURES.numsegments;
relpathanglesrate_old = GAZE_FEATURES.relpathanglesrate;
stddevabspathangles_old = GAZE_FEATURES.stddevabspathangles;
stddevfixationduration_old = GAZE_FEATURES.stddevfixationduration;
stddevpathdistance_old = GAZE_FEATURES.stddevpathdistance;
stddevrelpathangles_old = GAZE_FEATURES.stddevrelpathangles;
sumabspathangles_old = GAZE_FEATURES.sumabspathangles;
sumfixationduration_old = GAZE_FEATURES.sumfixationduration;
sumpathdistance_old = GAZE_FEATURES.sumpathdistance;
sumrelpathangles_old = GAZE_FEATURES.sumrelpathangles;

Sc_id = {};
abspathanglesrate = [];
eyemovementvelocity = [];
fixationrate = [];
length = [];
meanabspathangles = [];
meanfixationduration = [];
meanpathdistance = [];
meanrelpathangles = [];
numfixations = [];	
numsamples = [];
numsegments = [];
relpathanglesrate = [];
stddevabspathangles = [];
stddevfixationduration = [];
stddevpathdistance = [];
stddevrelpathangles = [];
sumabspathangles = [];
sumfixationduration = [];
sumpathdistance = [];
sumrelpathangles = [];


clear GAZE_FEATURES

strings_allsc = {'1_allsc  ', '2_allsc  ', '3_allsc  ', '4_allsc  ', '5_allsc  ', ...
    '6_allsc  ', '7_allsc  ', '8_allsc  ', '9_allsc  ', '101_allsc', '102_allsc'};

indexes_allsc = [];

for j = 1:size(strings_allsc, 2)
    for i = 1:size(Sc_id_old,1)
        test = strcmp(Sc_id_old(i,:), strings_allsc(j));
        if test  == 1
            indexes_allsc = [indexes_allsc; i];
            break
        end
    end
end

p1_indexes = (indexes_allsc(1) + 1:1:indexes_allsc(2) - 1)';
p2_indexes = (indexes_allsc(2) + 1:1:indexes_allsc(3) - 1)';
p3_indexes = (indexes_allsc(3) + 1:1:indexes_allsc(4) - 1)';
p4_indexes = (indexes_allsc(4) + 1:1:indexes_allsc(5) - 1)';
p5_indexes = (indexes_allsc(5) + 1:1:indexes_allsc(6) - 1)';
p6_indexes = (indexes_allsc(6) + 1:1:indexes_allsc(7) - 1)';
p7_indexes = (indexes_allsc(7) + 1:1:indexes_allsc(8) - 1)';
p8_indexes = (indexes_allsc(8) + 1:1:indexes_allsc(9) - 1)';
p9_indexes = (indexes_allsc(9) + 1:1:indexes_allsc(10) - 1)';
p10_indexes = (indexes_allsc(10) + 1:1:indexes_allsc(11) - 1)';
x = (indexes_allsc(11) + 1:1:size(Sc_id_old,1))';
p10_indexes = [p10_indexes; x; -1; -1];

p_indexes = [p1_indexes, p2_indexes, p3_indexes, p4_indexes, p5_indexes, ...
    p6_indexes, p7_indexes, p8_indexes, p9_indexes, p10_indexes];

clear x

strings_task = {'G_PH_1   ', 'G_PH_2   ', 'G_PH_3   ', 'G_PH_4   ', 'G_PH_5   ', 'G_PH_6   ', ...
'G_PH_7   ', 'G_PH_8   ', 'G_PH_9   ', 'G_PH_10  ', 'M_PH_1   ', 'M_PH_2   ', 'M_PH_3   ', 'M_PH_4   ', ...
'M_PH_5   ', 'M_PH_6   ', 'M_PH_7   ', 'M_PH_8   ', 'M_PH_9   ', 'M_PH_10  ', 'G_PA_1   ', 'G_PA_2   ', ...
'G_PA_3   ', 'G_PA_4   ', 'G_PA_5   ', 'M_PA_1   ', 'M_PA_2   ', 'M_PA_3   ', 'M_PA_4   ', 'M_PA_5   '};

for k = 1:size(p_indexes, 2)
    indexes = p_indexes(:, k);
    index_shift = size(Sc_id, 2);
    
    for j = 1: size(strings_task, 2)
        
        if k == 10
            i_range = size(indexes,1) - 2;
        else
            i_range = size(indexes,1);
        end
        
        for i = 1:i_range
            test = strcmp(Sc_id_old(indexes(i),:), strings_task(j));
            if test == 1
                text = sprintf('%d, %s', i, Sc_id_old(indexes(i),:));
                % disp(text) 
                Sc_id{j + index_shift} = Sc_id_old(indexes(i),:);
                abspathanglesrate(j + index_shift) = abspathanglesrate_old(indexes(i));
                eyemovementvelocity(j + index_shift) = eyemovementvelocity_old(indexes(i));
                fixationrate(j + index_shift) = fixationrate_old(indexes(i));
                length(j + index_shift) = length_old(indexes(i));
                meanabspathangles(j + index_shift) = meanabspathangles_old(indexes(i));
                meanfixationduration(j + index_shift) = meanfixationduration_old(indexes(i));
                meanpathdistance(j + index_shift) = meanpathdistance_old(indexes(i));
                meanrelpathangles(j + index_shift) = meanrelpathangles_old(indexes(i));
                numfixations(j + index_shift) = numfixations_old(indexes(i));	
                numsamples(j + index_shift) = numsamples_old(indexes(i));
                numsegments(j + index_shift) = numsegments_old(indexes(i));
                relpathanglesrate(j + index_shift) = relpathanglesrate_old(indexes(i));
                stddevabspathangles(j + index_shift) = stddevabspathangles_old(indexes(i));
                stddevfixationduration(j + index_shift) = stddevfixationduration_old(indexes(i));
                stddevpathdistance(j + index_shift) = stddevpathdistance_old(indexes(i));
                stddevrelpathangles(j + index_shift) = stddevrelpathangles_old(indexes(i));
                sumabspathangles(j + index_shift) = sumabspathangles_old(indexes(i));
                sumfixationduration(j + index_shift) = sumfixationduration_old(indexes(i));
                sumpathdistance(j + index_shift) = sumpathdistance_old(indexes(i));
                sumrelpathangles(j + index_shift) = sumrelpathangles_old(indexes(i));
                break
            end
        end
    end
end

Sc_id = Sc_id';
abspathanglesrate = abspathanglesrate';
eyemovementvelocity = eyemovementvelocity';
fixationrate = fixationrate';
length = length';
meanabspathangles = meanabspathangles';
meanfixationduration = meanfixationduration';
meanpathdistance = meanpathdistance';
meanrelpathangles = meanrelpathangles';
numfixations = numfixations';
numsamples = numsamples';
numsegments = numsegments';
relpathanglesrate = relpathanglesrate';
stddevabspathangles = stddevabspathangles';
stddevfixationduration = stddevfixationduration';
stddevpathdistance = stddevpathdistance';
stddevrelpathangles = stddevrelpathangles';
sumabspathangles = sumabspathangles';
sumfixationduration = sumfixationduration';
sumpathdistance = sumpathdistance';
sumrelpathangles = sumrelpathangles';
