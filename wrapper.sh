#!/bin/sh
echo  >> ./prowler_wrapper_output.txt
echo "Executed on: $(date)" >> ./prowler_wrapper_output.txt
#echo  ----------------------------------- >> ./prowler_wrapper_output.txt
echo  COMMAND: aws ${1+"$@"} >> ./prowler_wrapper_output.txt
echo  OUTPUT: >> ./prowler_wrapper_output.txt
exec aws ${1+"$@"} | tee -a ./prowler_wrapper_output.txt
#echo  +++++++++++++++++++++++++++++++++++ >> ./prowler_wrapper_output.txt
