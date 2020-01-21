library(stringr)

    ps_f11_B@sam_data[['new_column_name']] <- ps_f11_B@sam_data[["old_string_values"]] %>% str_replace(pattern = 'pattern_to_find', replacement = 'replace_to')
