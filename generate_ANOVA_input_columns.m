TRIAL = TASK;
TARGET = TASK;
TECHNIQUE = ZOOM_METHOD;
INPUT_METHOD = INPUT_METHOD;

%% -------------------------------------------

G_PH_1_indexes = [];
G_PH_2_indexes = [];
G_PH_3_indexes = [];
G_PH_4_indexes = [];
G_PH_5_indexes = [];
G_PH_6_indexes = [];
G_PH_7_indexes = [];
G_PH_8_indexes = [];
G_PH_9_indexes = [];
G_PH_10_indexes = [];

M_PH_1_indexes = [];
M_PH_2_indexes = [];
M_PH_3_indexes = [];
M_PH_4_indexes = [];
M_PH_5_indexes = [];
M_PH_6_indexes = [];
M_PH_7_indexes = [];
M_PH_8_indexes = [];
M_PH_9_indexes = [];
M_PH_10_indexes = [];

G_PA_1_indexes = [];
G_PA_2_indexes = [];
G_PA_3_indexes = [];
G_PA_4_indexes = [];
G_PA_5_indexes = [];

M_PA_1_indexes = [];
M_PA_2_indexes = [];
M_PA_3_indexes = [];
M_PA_4_indexes = [];
M_PA_5_indexes = [];

%% -------------------------------------------

for i = 1:size(TASK,1)
index = strcmp(TASK(i), {'G_PH_1'});
G_PH_1_indexes = [G_PH_1_indexes; index];

index = strcmp(TASK(i), {'G_PH_2'});
G_PH_2_indexes = [G_PH_2_indexes; index];

index = strcmp(TASK(i), {'G_PH_3'});
G_PH_3_indexes = [G_PH_3_indexes; index];

index = strcmp(TASK(i), {'G_PH_4'});
G_PH_4_indexes = [G_PH_4_indexes; index];

index = strcmp(TASK(i), {'G_PH_5'});
G_PH_5_indexes = [G_PH_5_indexes; index];

index = strcmp(TASK(i), {'G_PH_6'});
G_PH_6_indexes = [G_PH_6_indexes; index];

index = strcmp(TASK(i), {'G_PH_7'});
G_PH_7_indexes = [G_PH_7_indexes; index];

index = strcmp(TASK(i), {'G_PH_8'});
G_PH_8_indexes = [G_PH_8_indexes; index];

index = strcmp(TASK(i), {'G_PH_9'});
G_PH_9_indexes = [G_PH_9_indexes; index];

index = strcmp(TASK(i), {'G_PH_10'});
G_PH_10_indexes = [G_PH_10_indexes; index];

index = strcmp(TASK(i), {'M_PH_1'});
M_PH_1_indexes = [M_PH_1_indexes; index];

index = strcmp(TASK(i), {'M_PH_2'});
M_PH_2_indexes = [M_PH_2_indexes; index];

index = strcmp(TASK(i), {'M_PH_3'});
M_PH_3_indexes = [M_PH_3_indexes; index];

index = strcmp(TASK(i), {'M_PH_4'});
M_PH_4_indexes = [M_PH_4_indexes; index];

index = strcmp(TASK(i), {'M_PH_5'});
M_PH_5_indexes = [M_PH_5_indexes; index];

index = strcmp(TASK(i), {'M_PH_6'});
M_PH_6_indexes = [M_PH_6_indexes; index];

index = strcmp(TASK(i), {'M_PH_7'});
M_PH_7_indexes = [M_PH_7_indexes; index];

index = strcmp(TASK(i), {'M_PH_8'});
M_PH_8_indexes = [M_PH_8_indexes; index];

index = strcmp(TASK(i), {'M_PH_9'});
M_PH_9_indexes = [M_PH_9_indexes; index];

index = strcmp(TASK(i), {'M_PH_10'});
M_PH_10_indexes = [M_PH_10_indexes; index];

index = strcmp(TASK(i), {'G_PA_1'});
G_PA_1_indexes = [G_PA_1_indexes; index];

index = strcmp(TASK(i), {'G_PA_2'});
G_PA_2_indexes = [G_PA_2_indexes; index];

index = strcmp(TASK(i), {'G_PA_3'});
G_PA_3_indexes = [G_PA_3_indexes; index];

index = strcmp(TASK(i), {'G_PA_4'});
G_PA_4_indexes = [G_PA_4_indexes; index];

index = strcmp(TASK(i), {'G_PA_5'});
G_PA_5_indexes = [G_PA_5_indexes; index];

index = strcmp(TASK(i), {'M_PA_1'});
M_PA_1_indexes = [M_PA_1_indexes; index];

index = strcmp(TASK(i), {'M_PA_2'});
M_PA_2_indexes = [M_PA_2_indexes; index];

index = strcmp(TASK(i), {'M_PA_3'});
M_PA_3_indexes = [M_PA_3_indexes; index];

index = strcmp(TASK(i), {'M_PA_4'});
M_PA_4_indexes = [M_PA_4_indexes; index];

index = strcmp(TASK(i), {'M_PA_5'});
M_PA_5_indexes = [M_PA_5_indexes; index];

end

G_PH_1_indexes = find(G_PH_1_indexes);
G_PH_2_indexes = find(G_PH_2_indexes);
G_PH_3_indexes = find(G_PH_3_indexes);
G_PH_4_indexes = find(G_PH_4_indexes);
G_PH_5_indexes = find(G_PH_5_indexes);
G_PH_6_indexes = find(G_PH_6_indexes);
G_PH_7_indexes = find(G_PH_7_indexes);
G_PH_8_indexes = find(G_PH_8_indexes);
G_PH_9_indexes = find(G_PH_9_indexes);
G_PH_10_indexes = find(G_PH_10_indexes);

M_PH_1_indexes = find(M_PH_1_indexes);
M_PH_2_indexes = find(M_PH_2_indexes);
M_PH_3_indexes = find(M_PH_3_indexes);
M_PH_4_indexes = find(M_PH_4_indexes);
M_PH_5_indexes = find(M_PH_5_indexes);
M_PH_6_indexes = find(M_PH_6_indexes);
M_PH_7_indexes = find(M_PH_7_indexes);
M_PH_8_indexes = find(M_PH_8_indexes);
M_PH_9_indexes = find(M_PH_9_indexes);
M_PH_10_indexes = find(M_PH_10_indexes);

G_PA_1_indexes = find(G_PA_1_indexes);
G_PA_2_indexes = find(G_PA_2_indexes);
G_PA_3_indexes = find(G_PA_3_indexes);
G_PA_4_indexes = find(G_PA_4_indexes);
G_PA_5_indexes = find(G_PA_5_indexes);

M_PA_1_indexes = find(M_PA_1_indexes);
M_PA_2_indexes = find(M_PA_2_indexes);
M_PA_3_indexes = find(M_PA_3_indexes);
M_PA_4_indexes = find(M_PA_4_indexes);
M_PA_5_indexes = find(M_PA_5_indexes);

%% -------------------------------------------

TRIAL(G_PH_1_indexes) = {1};
TRIAL(G_PH_2_indexes) = {2};
TRIAL(G_PH_3_indexes) = {3};
TRIAL(G_PH_4_indexes) = {4};
TRIAL(G_PH_5_indexes) = {5};
TRIAL(G_PH_6_indexes) = {6};
TRIAL(G_PH_7_indexes) = {7};
TRIAL(G_PH_8_indexes) = {8};
TRIAL(G_PH_9_indexes) = {9};
TRIAL(G_PH_10_indexes) = {10};

TRIAL(M_PH_1_indexes) = {11};
TRIAL(M_PH_2_indexes) = {12};
TRIAL(M_PH_3_indexes) = {13};
TRIAL(M_PH_4_indexes) = {14};
TRIAL(M_PH_5_indexes) = {15};
TRIAL(M_PH_6_indexes) = {16};
TRIAL(M_PH_7_indexes) = {17};
TRIAL(M_PH_8_indexes) = {18};
TRIAL(M_PH_9_indexes) = {19};
TRIAL(M_PH_10_indexes) = {20};

TRIAL(G_PA_1_indexes) = {21};
TRIAL(G_PA_2_indexes) = {22};
TRIAL(G_PA_3_indexes) = {23};
TRIAL(G_PA_4_indexes) = {24};
TRIAL(G_PA_5_indexes) = {25};

TRIAL(M_PA_1_indexes) = {26};
TRIAL(M_PA_2_indexes) = {27};
TRIAL(M_PA_3_indexes) = {28};
TRIAL(M_PA_4_indexes) = {29};
TRIAL(M_PA_5_indexes) = {30};

TRIAL = cell2mat(TRIAL);

%% -------------------------------------------

% 1 = FZ
% 2 = DZ
% 3 = MIX
% 4 = -1

FZ_indexes = [];
DZ_indexes = [];
MIX_indexes = [];
MISSING_indexes = [];

for i = 1:size(ZOOM_METHOD,1)
    index = strcmp(ZOOM_METHOD(i), {'FZ'});
    FZ_indexes = [FZ_indexes; index];
    
    index = strcmp(ZOOM_METHOD(i), {'DZ'});
    DZ_indexes = [DZ_indexes; index];
    
    index = strcmp(ZOOM_METHOD(i), {'MIX'});
    MIX_indexes = [MIX_indexes; index];
    
    index = strcmp(ZOOM_METHOD(i), {'-1'});
    MISSING_indexes = [MISSING_indexes; index];
end

FZ_indexes = find(FZ_indexes);
DZ_indexes = find(DZ_indexes);
MIX_indexes = find(MIX_indexes);
MISSING_indexes = find(MISSING_indexes);
TECHNIQUE(FZ_indexes) = {1};
TECHNIQUE(DZ_indexes) = {2};
TECHNIQUE(MIX_indexes) = {3};
TECHNIQUE(MISSING_indexes) = {4};
TECHNIQUE = cell2mat(TECHNIQUE);

%% ------------------------------------------

% 1 = GAZE
% 2 = MANUAL
% 3 = MISSING

G_indexes = [];
M_indexes = [];
MISSING_indexes = [];

for i = 1:size(INPUT_METHOD,1)
    index = strcmp(INPUT_METHOD(i), {'G'});
    G_indexes = [G_indexes; index];
    
    index = strcmp(INPUT_METHOD(i), {'M'});
    M_indexes = [M_indexes; index];
    
    index = strcmp(INPUT_METHOD(i), {'-1'});
    MISSING_indexes = [MISSING_indexes; index];
end

G_indexes = find(G_indexes);
M_indexes = find(M_indexes);
MISSING_indexes = find(MISSING_indexes);

INPUT_METHOD(G_indexes) = {1};
INPUT_METHOD(M_indexes) = {2};
INPUT_METHOD(MISSING_indexes) = {2};
INPUT_METHOD = cell2mat(INPUT_METHOD);

%% ------------------------------------------
% 1 = REGULAR
% 2 = IRREGULAR
% 3 = PATIENT

TARGET(G_PH_1_indexes) = {1};
TARGET(G_PH_2_indexes) = {1};
TARGET(G_PH_3_indexes) = {1};
TARGET(G_PH_4_indexes) = {1};
TARGET(G_PH_5_indexes) = {1};
TARGET(G_PH_6_indexes) = {1};
TARGET(G_PH_7_indexes) = {2};
TARGET(G_PH_8_indexes) = {2};
TARGET(G_PH_9_indexes) = {2};
TARGET(G_PH_10_indexes) = {2};

TARGET(M_PH_1_indexes) = {1};
TARGET(M_PH_2_indexes) = {1};
TARGET(M_PH_3_indexes) = {1};
TARGET(M_PH_4_indexes) = {1};
TARGET(M_PH_5_indexes) = {1};
TARGET(M_PH_6_indexes) = {1};
TARGET(M_PH_7_indexes) = {2};
TARGET(M_PH_8_indexes) = {2};
TARGET(M_PH_9_indexes) = {2};
TARGET(M_PH_10_indexes) = {2};

TARGET(G_PA_1_indexes) = {3};
TARGET(G_PA_2_indexes) = {3};
TARGET(G_PA_3_indexes) = {3};
TARGET(G_PA_4_indexes) = {3};
TARGET(G_PA_5_indexes) = {3};

TARGET(M_PA_1_indexes) = {3};
TARGET(M_PA_2_indexes) = {3};
TARGET(M_PA_3_indexes) = {3};
TARGET(M_PA_4_indexes) = {3};
TARGET(M_PA_5_indexes) = {3};

TARGET = cell2mat(TARGET);


