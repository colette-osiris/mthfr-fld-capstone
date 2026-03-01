################################
#Final Project: NHANES Import Helper 
#Student: Colette Rouiller
########################################

#PgAdmin cannot read .XPT files so need to import raw files and convert into CSV


#imports 
import pandas as pd 
import numpy as np 
import matplotlib.pyplot as plt


#load data
 
##data is in .XPT format (sas transport) - need to convert to .csv 
##actually can have python read it in - can use head() like in R to see column names 


#note to self: paths still need to be modified to capstone 

#approach 1 - probably going to replace with dictionary and loop 
'''
#2001-2002 cohort 
c1_folate_b12_hcy_mma_iron_data = pd.read_sas("data/raw_data/L06_2_B.xpt", format="xport")#L06_2_B.XPT 
c1_alt_ast_ggt_glucose_data = pd.read_sas("data/raw_data/L40_B.xpt", format="xport")#L40_B.XPT
c1_bmi_data = pd.read_sas("data/raw_data/BMX_B.xpt", format="xport")#BMX_B.XPT
c1_demo_data = pd.read_sas("data/raw_data/DEMO_B.xpt", format="xport")#DEMO_B.XPT
c1_diabetes_data = pd.read_sas("data/raw_data/DIQ_B.xpt", format="xport")#DIQ_B.XPT
c1_crp_data = pd.read_sas("data/raw_data/L11_B.xpt", format="xport")#L11_B.XPT

#check data heads/columns - works - data loaded successfully 

print(c1_folate_b12_hcy_mma_iron_data.columns)
print(c1_alt_ast_ggt_glucose_data.columns)
print(c1_bmi_data.columns)
print(c1_demo_data.columns)
print(c1_diabetes_data.columns)
print(c1_crp_data.columns)
'''

#now build dictionary to loop through 
c1_dict = {
	"L06_2_B.xpt":   "folate_b12_hcy_mma_iron",
    "L40_B.xpt":   "alt_ast_ggt_glucose",
    "BMX_B.xpt":   "bmi",
    "DEMO_B.xpt":  "demo",
    "DIQ_B.xpt":   "diabetes",
    "L11_B.xpt":   "crp"
}

#loop for c1 conversion 

for raw_file in c1_dict: 
	df = pd.read_sas("data/raw_data/" + raw_file, format="xport")
	df.to_csv("data/clean_data/c1_" + c1_dict[raw_file] + ".csv", index=False) 

'''
#2003-2004 cohort 
c2_folate_b12_data = pd.read_sas("data/raw_data/L06_C.xpt", format="xport")#L06_2_B.XPT 
c2_hcy_mma_data = pd.read_sas("data/raw_data/L06MH_C.xpt", format="xport")#L06MH_C.xpt.XPT 
c2_alt_ast_ggt_glucose_data = pd.read_sas("data/raw_data/L40_C.xpt", format="xport")#L40_C.XPT
c2_bmi_data = pd.read_sas("data/raw_data/BMX_C.xpt", format="xport")#BMX_C.XPT
c2_demo_data = pd.read_sas("data/raw_data/DEMO_C.xpt", format="xport")#DEMO_C.XPT
c2_diabetes_data = pd.read_sas("data/raw_data/DIQ_C.xpt", format="xport")#DIQ_C.XPT
c2_crp_data = pd.read_sas("data/raw_data/L11_C.xpt", format="xport")#L11_C.XPT
c2_iron_data = pd.read_sas("data/raw_data/L05_C.xpt", format="xport")#L05_C.XPT 

#check data heads/columns - works - data loaded successfully 

print(c2_folate_b12_data.columns)
print(c2_hcy_mma_data.columns)
print(c2_alt_ast_ggt_glucose_data.columns)
print(c2_bmi_data.columns)
print(c2_demo_data.columns)
print(c2_diabetes_data.columns)
print(c2_crp_data.columns)
print(c2_iron_data.columns)
'''

#now build dictionary to loop through 
c2_dict = {
	"L06NB_C.xpt":   "folate_b12",
	"L06MH_C.xpt":   "hcy_mma",
    "L40_C.xpt":   "alt_ast_ggt_glucose",
    "BMX_C.xpt":   "bmi",
    "DEMO_C.xpt":  "demo",
    "DIQ_C.xpt":   "diabetes",
    "L11_C.xpt":   "crp",
    "L06TFR_C.xpt":   "iron"
}

#loop for c1 conversion 

for raw_file in c2_dict: 
	df = pd.read_sas("data/raw_data/" + raw_file, format="xport")
	df.to_csv("data/clean_data/c2_" + c2_dict[raw_file] + ".csv", index=False) 


