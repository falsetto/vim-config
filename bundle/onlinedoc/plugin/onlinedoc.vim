function! OnlineDoc()
  if &ft =~ "cpp"
    let s:urlTemplate = "http://doc.trolltech.com/4.1/%.html"
  elseif &ft =~ "ruby"
    let s:urlTemplate = "http://www.ruby-doc.org/core/classes/%.html"
  elseif &ft =~ "perl"
    let s:urlTemplate = "http://perldoc.perl.org/functions/%.html"
  elseif &ft =~ "php"
    let s:urlTemplate = "http://www.php.net/%"
  else
    return
  endif
  " let s:browser = "\"D:\\Applications\\Mozilla Firefox\\firefox.exe\""
  let s:wordUnderCursor = expand("<cword>")
  let s:url = substitute(s:urlTemplate, "%", s:wordUnderCursor, "g")
  " let s:cmd = "silent !start " . s:browser . " " . s:url
  let s:cmd = "!open " . s:url
  execute s:cmd
endfunction
" Online doc search.
map <silent> <D-d> :call OnlineDoc()<CR>
