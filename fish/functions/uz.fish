function uz --wraps=gunzip --wraps=unzip
  unzip -q $argv[1]
  rm $argv[1]
end
