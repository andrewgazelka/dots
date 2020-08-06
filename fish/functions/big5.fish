function big5
  if isatty stdin
    set input $argv[1]
  else
    set input -
  end
  cat $input | fx .mbrId.big5
end

