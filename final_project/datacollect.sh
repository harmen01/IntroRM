#!/bin/bash
#
# Descr : 
# 
#
# Usage: ./datacollect.sh FILE

# argument is the file. check if we get it
TEXT=$1
if [ -z "$TEXT" ]
then
    echo "specify a file!"
    exit
fi

#
echo "Data 2010:"
echo "MigrationBackground; Period; AmountOfSuspects; AmountOfSuspectsRelative; AmountOfSuspectsReportFiled; AmountOfSuspectsReportFiledRelative"
cat $TEXT | cut -d ';' -f4,6-7,9-10,12 | grep -E '1012600|2012605' | grep -v -E '\"       .\"|\"\"' | grep 2010JJ00 | head -2

echo "Data 2011:"
echo "MigrationBackground; Period; AmountOfSuspects; AmountOfSuspectsRelative; AmountOfSuspectsReportFiled; AmountOfSuspectsReportFiledRelative"
cat $TEXT | cut -d ';' -f4,6-7,9-10,12 | grep -E '1012600|2012605' | grep -v -E '\"       .\"|\"\"' | grep 2011JJ00 | head -2

echo "Data 2012:"
echo "MigrationBackground; Period; AmountOfSuspects; AmountOfSuspectsRelative; AmountOfSuspectsReportFiled; AmountOfSuspectsReportFiledRelative"
cat $TEXT | cut -d ';' -f4,6-7,9-10,12 | grep -E '1012600|2012605' | grep -v -E '\"       .\"|\"\"' | grep 2012JJ00 | head -2

echo "Data 2013:"
echo "MigrationBackground; Period; AmountOfSuspects; AmountOfSuspectsRelative; AmountOfSuspectsReportFiled; AmountOfSuspectsReportFiledRelative"
cat $TEXT | cut -d ';' -f4,6-7,9-10,12 | grep -E '1012600|2012605' | grep -v -E '\"       .\"|\"\"' | grep 2013JJ00 | head -2

echo "Data 2014:"
echo "MigrationBackground; Period; AmountOfSuspects; AmountOfSuspectsRelative; AmountOfSuspectsReportFiled; AmountOfSuspectsReportFiledRelative"
cat $TEXT | cut -d ';' -f4,6-7,9-10,12 | grep -E '1012600|2012605' | grep -v -E '\"       .\"|\"\"' | grep 2014JJ00 | head -2
