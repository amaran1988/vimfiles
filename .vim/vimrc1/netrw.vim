" =========================================
"            NETRW SETTINGS
" =========================================



let g:netrw_banner=0 "disable annoying banners
let g:netrw_browse_split=4 " Open in prior window
let g:netrw_altv=1 " Open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


