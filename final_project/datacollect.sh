#!/bin/bash
#
# Descr : Can be used on CBS crime dataset to obtain data about
# Crime suspects and their migration background.
# It filters out data from certain years and categories.
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

# Filters out data for years 2010,2011,2012,2013 and 2014
# Cuts important fields for research. 
# Then chooses the migration backgrounds to look at (1012600=Dutch background, 2012605=Migration background).
# It removes empty fields and selects the year. Shows the upper 2 rows, which contain total yearly data.
# Also outputs info about data
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
