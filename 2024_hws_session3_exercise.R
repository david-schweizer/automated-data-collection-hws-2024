# HWS 2024 - Automated Data Collection with R - David Schweizer
# 19.09.2024 - Session 03
# Exercise

# 1. Gapminder data ------------------------------------------------------------

## Let's start with one of R's built-in datasets: gapminder --------------------
install.packages("gapminder")
library(gapminder)

## Inspect the data ------------------------------------------------------------


## Select data -----------------------------------------------------------------


## Select and rename in one step -----------------------------------------------


## Filter based on multiple conditions -----------------------------------------


## Create new variables --------------------------------------------------------


# 2. Import data ---------------------------------------------------------------

## Let's have a look at data from the Bundestagswahlleiterin -------------------
## https://www.bundeswahlleiterin.de/bundestagswahlen/2021/ergebnisse.html

## Try to import the data manually 
## DOWNLOADS -> "Tabbelle: Ergebnisse nach Wahlkreisen (flacher Aufbau)
## This file is a .csv file. When importing manually, select "From Text (readr)..."
## You might need to adapt the import options! Also, pay attention to the decimal mark...
## Copy-Paste the code in this script


## Inspect the data ------------------------------------------------------------

## Filter data -----------------------------------------------------------------
## Filter the data so that you only keep the vote share of the Greens ("Zweitstimmen") in Bavarian election districts

## Structural data -------------------------------------------------------------
## Have a look at the website: Can you find the "Strukturdaten" and import them manually?

## Select and rename -----------------------------------------------------------
## Keep only the columns "Wahlkreis-Nr.", "Wahlkreis-Name", and "PKW-Bestand am 01.01.2020 - PKW insgesamt (je 1000 EW)"
## Rename them to English. They should be named informative but short.

# 3. Import ESS data -----------------------------------------------------------

## Get the data for the ESS round 10 (SC) for Germany here https://ess.sikt.no/en/?tab=overview
## Create a free profile, use the "Datafile Builder (Wizard)", download the data as ".dta" (STATA) file.
## Now, import the data:

## Select & rename variables ---------------------------------------------------

## The goal is to keep the following variables. In order to identify these variables,
## you need to inspect the ESS Data Portal: https://ess.sikt.no/en/?tab=overview. You can search for the terms.

## - Respondent ID
## And the variables for the following questions:
## - How important do you think it is for democracy in general ...
##   ... that national elections are free and fair
##   ... that the media are free to criticise the government?
##   ... that citizens have the final say on the most important political issues by voting on them directly in referendums?
## - To what extent do you think each of the following statements applies in [country]?
##   ... national elections in [country] are free and fair
##   ... the media in [country] are free to criticise the government?
##   ... citizens in [country] have the final say on the most important political issues by voting on them directly in referendums?
## - And on the whole, how satisfied are you with the way democracy works in [country]?

## After selecting the variables, rename them. You can also do this in one step.

## Inspect & Recode ------------------------------------------------------------
## Respondents can refuse to answer questions or say that they don't know etc.
## Inspect the variables (using the study documentation). What values should we discard?
## Recode these values (e.g., "Don't know") to "NA".

## Filter ----------------------------------------------------------------------
## Discard all observations that have NAs (Hint: Using Google you might find a single function that takes care of this)

## Calculate a "democratic deficit" --------------------------------------------
## Calculate the difference for each democracy variable (that is how important respondents perceive specific 
## things (e.g., free and fair election) to be and to what extent they think this applies in their country)
## Store this result in a new variable. You should produce 3 new variables.
## You could name one of the for example: "diff_elections"

## Next, create a variable called "democratif deficit" -------------------------
## This should be the mean of the three differences you calculated before.
## Do not use the mean() function.