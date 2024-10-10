# HWS 2024 - Automated Data Collection with R - David Schweizer
# 10.10.2024 - Session 06
# Exercise

# Install/load necessary packages ----------------------------------------------

# Hint: You only need the tidyverse. It includes readr, dpylr, etc.

# Get data ---------------------------------------------------------------------

# Links to structural data 
# 2021: https://www.bundeswahlleiterin.de/dam/jcr/b1d3fc4f-17eb-455f-a01c-a0bf32135c5d/btw21_strukturdaten.csv

# Links to election data
# 2021: https://www.bundeswahlleiterin.de/dam/jcr/860495c9-83fb-4068-8a99-c1c985ffffd2/w-btw21_kerg2.csv

# Import csv -------------------------------------------------------------------

# Import the data manually, give the data frames substantial names
# You can copy the code to import the data from the preview interface or the console after importing manually
# Insert the code below. This way, you do not need to load it manually again and again.
# Have a look at the csv files before importing in any text editor to get an understanding of its structure

## Import 2021 election data here ----------------------------------------------

## Import 2021 structural data here --------------------------------------------

# Inspect the data -------------------------------------------------------------

# Take your time to inspect the data. Helpful functions are
# view(), str(), dim(), names() / or colnames()

# check unique values of the column "Gebietsart"
unique(btw17_election$Gebietsart)

# ! This is important for the data wrangling (selecting, filtering). We need to know column names, data types, etc.

# Data wrangling ---------------------------------------------------------------

# Goal: Build a data set in the long format for the 2021 elections with the following columns:

# district_no (numeric)
# district_name (character)
# party_name (character) - only parties represented in the Bundestag
# vote_type (1st and 2nd vote) (numeric or character)
# vote_share (numeric)
# unemployment_rate (numeric)
# share_foreigners (numeric)
# east (factor)

# Your number of rows should equal: districts X parties X vote type

# In order to build this data set, you need to apply all of the introduced dplyr verbs
# Think about the filtering and selecting steps beforehand! How can you join the data later?
# Hint 1: You can create the "east" variable using case_when() or if_else() based on the German states
# Hint 2: There are 299 election districts.

## 1.Mutating, filtering, selecting, renaming ----------------------------------
# Select the relevant variables (columns) in the 2021 election and structural data frames
# and rename them in one step! It is necessary to also mutate and filter the data

## 2. Join ---------------------------------------------------------------------
# Merge both dataframes. Think: What variable(s) are present in both dataframes that are unique identifiers?
# Think: Could we also use bind_cols()?

## 3. Check --------------------------------------------------------------------
# Using the str() function, check if you managed to build the data set correctly.

## 4. Save data frame ----------------------------------------------------------
# Save your data frame as .rda file

# Summary statistics -----------------------------------------------------------

## Calculate the difference between the first and second vote ------------------
# (for each party in each district) 

# Hint: You might want to reshape the dataframe 

## What is the highest difference (what party and where?)? ---------------------

# BONUS: Combine with the ESS data ---------------------------------------------
# Get the ESS round 10 (SC) for Germany in the csv format

# Remember the democratic deficit from last session? (if it is easier, then just use the trust in parliament variable)
# Goal: 1. Combine the election data, structural data, as well as the ESS data
#       2. Create a dataset that has 16 rows (one for each state) and the following columns:
#          Vote share of non-government parties (2nd vote)
#          Vote share AfD (2nd vote)
#          Unemployment rate
#          Democratic deficit (or trust in parliament)

# The ESS also includes a variable called "region". 
# You can check the values on the data portal: https://ess.sikt.no/en/?tab=overview
# Just type "region" in the search box.

# Hint: You need to aggregate the ESS data ,
# and identify the state level rows in the election and structural data frames.

# Again, save the dataframe as .rda file.

            

