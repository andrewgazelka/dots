function gpsd 
  set url "http://erp-test-wcf:8080/api/Cs/GetProgramSetupData"
  switch $argv[1]
    case 2
      set pcid 50508
      set fid 1765 
    case 3
      set pcid 50511
      set fid 1766
    case 1 '*'
      set pcid 50488
      set fid 1706
  end 
  http $url ProgramCycleID==$pcid FormId==$fid | fx
end

