# HWS 2024 - Automated Data Collection with R - David Schweizer
# 17.10.2024 - Session 07
# Exercise

# Install/load necessary packages ----------------------------------------------
# Hint: You only need the tidyverse. It includes readr, dpylr, and ggplot!
library(tidyverse)

# Gapminder data ---------------------------------------------------------------
# You can always just start with the gapminder data to get more comfortable with ggplot!
# Just test a few functionalities of the ggplot package: geoms, themes, labels, ...
install.packages("gapminder")
library(gapminder)

gapminder <- gapminder # we store the gapminder data in an object called gapminder

# Now you can start: Build your own (gg)plot step-by-step.

# German federal election data -------------------------------------------------
# This is the outcome of our last exercise.
# You can also get the data from ILIAS. 
load("btw21_election_structural.rda")

## 1. Create a scatterplot (x-axis: unemployment, y-axis: vote share) for the Left (2nd vote).

# HINT: Filter first!

## 2. Change the color of points to red, add a title, a caption, as well as rename the axis labels.

## 3. Add a linear trend to the plot. Is there a relationship?

## 4. Change the theme and include 0 on the x- and y-axis!

## 4. Next, create a scatterplot (x-axis: share of foreigners, y-axis: vote share) for the AfD (2nd vote)
# Also: Play around with the other layers!

## 5. Create a histogram for the vote share of the AfD

# Can you then change the bins? Have a look at the documentation of geom_histogram!

## 6. Now, using facet_wrap, show the data separately for East and West Germany in two panels.

# How can you rename 1 to east and 0 to west in resulting the plot?

## 7. Finally, using facet_wrap, create histograms of the vote share (2nd vote) of all parties in parliament
# Do NOT differentiate between east and west

# Can you change the plot so that you have two columns instead of three?

# Bonus: Maps -------------------------------------------------------------------------
# Try to create a choropleth map showing the vote shares of the SPD at the district level

# Can you adjust the color to red? 