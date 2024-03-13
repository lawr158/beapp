function grp_proc_info_in = gui_backward_compatability(grp_proc_info_in)
    %%Provide backwards compatibility for beapp gui users who created/are
    %%using rn templates from older versions of beapp

    %%Call sync_beapp_toggle mods to update the module list with latest
    %%options
    grp_proc_info_in = sync_beapp_toggle_mods(grp_proc_info_in);

    %%Update new user inputs not available in gui with default settings
    grp_proc_info_in.src_save_date_time = 0;
    
end