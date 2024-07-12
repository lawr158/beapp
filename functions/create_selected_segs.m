%% create_selected_segs(eeg_w)
%
% iterates through the conditions of eeg_w. If the current condition has
% more than or equal to n segments, then select random set of n segments
% from the current condition. Else no segments are saved for that condition
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function selected_segs = create_selected_segs(eeg_w, num_trials_selected)
    conds = size(eeg_w,1);
    for curr_condition = 1:conds
        segs = size(eeg_w{curr_condition,1},3);
        if segs >= num_trials_selected
            selected_segs{curr_condition,1} = sort(randperm(segs,num_trials_selected));
        else 
            selected_segs{curr_condition,1} = [];
        end
    end
end