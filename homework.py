# -*- coding: utf-8 -*-
"""
Created on Thu Jun 13 18:26:05 2019

@author: rober
"""

import os
import csv
currentDir = os.getcwd()
path = os.path.join(currentDir, 'Resource', 'budget_data.csv')
months = []
with open(path, newline='') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=',')
    csvheader = next(csvreader)
    csvreader_List = list(csvreader)
print("total Months " + str(len(csvreader_List)))

print ("Financial Analysis")
print("-------------------------------")
#count the months read teh month clolumn to count the months, then display

#Net profit/loss (calculate the differences in from month to month then add them together)

#average of changes in profit/loss

#greatest increase in profit

#greatest decrease in loss
