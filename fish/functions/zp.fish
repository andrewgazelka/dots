function zp
  wget $argv[1] -O temp.zip
  unzip temp.zip
  rm temp.zip
end
