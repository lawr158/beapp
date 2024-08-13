%% create_selected_segs(eeg_w, win_select_n_trials)
%
% iterates through the conditions of eeg_w. If the current condition has
% more than or equal to n segments, then select random set of n segments
% from the current condition. Else no segments are saved for that condition
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function selected_segs = create_selected_segs(eeg_w, win_select_n_trials)
    for curr_condition = 1:size(eeg_w,1)
        segs = size(eeg_w{curr_condition,1},3);
        if segs >= win_select_n_trials
            selected_segs{curr_condition,1} = sort(randperm(segs,win_select_n_trials));
        else 
            selected_segs{curr_condition,1} = [];
        end
    end
end