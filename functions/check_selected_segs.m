%% check_selected_segs(win_select_n_trials, file_proc_info, eeg_w)
%
% (1) check is win_select_n_trials is not empty.
% (2) check if selected_segs is a field in file_proc_info
% (3) check if length of select_segs does not equal win_select_n_trials
% if (1) and not (2) then create selected_segs
% if (1) and (2) and (3) then create selected segs
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function file_proc_info = check_selected_segs(win_select_n_trials, file_proc_info, eeg_w)
    if ~isempty(win_select_n_trials)
        if isfield(file_proc_info, selected_segs)
            for c=1:size(file_proc_info.selected_segs)
                if length(file_proc_info.selected_segs{c}) ~= win_select_n_trials
                    file_proc_info.selected_segs = create_selected_segs(eeg_w,win_select_n_trials);
                    break
                end
            end
        else
            file_proc_info.selected_segs = create_selected_segs(eeg_w,win_select_n_trials);
        end
    end
end