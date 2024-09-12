# HWS 2024 - Automated Data Collection with R - David Schweizer
# 12.09.2024 - Session 02
# Exercise

# 1 - Getting to know RStudio --------------------------------------------------

## a - Explore -----------------------------------------------------------------
# First, take some time to explore the RStudio interface. 
# Can you find the elements and options we have discussed so far?

## a - Try out -----------------------------------------------------------------
# 1) Change RStudio's theme to "Dracula".
# 2) Activate the use of "rainbow parentheses".
# 3) Change the pane layout: Add a third "source" column" and minimize the console pane.

# What if you cannot find the right place to activate these settings? Google!

# 2 - Use the console ----------------------------------------------------------
# Now, we have taken the first steps in RStudio.
# Start using the console by entering and executing the following simple calculations: 

# 1) 21 times 2; 
# 2) 2 to the power of 6; 
# 3) 1 divided by 3.

# What are the disadvantages of using the console?

# 3 - Using the source pane ----------------------------------------------------

# 1) Create a new R script, and save it as "test.R". .R indicates that it is an R script.
# 2) Create an object: Assign the number 49 to an object named the_answer and then print the object.

# 4 - Next steps ---------------------------------------------------------------

# 1) Use a simple function from the base package to calculate the square root of 49.
# 2) Can you get the same result applying the function to the object?

# 5 - Packages -----------------------------------------------------------------

# 1) Install and load the dplyr package.
# 2) Have a look at the documentation using the help() function.
# 3) Install and load the tidyverse package. What do you notice?

# 6 - Vectors, lists, and dataframes -------------------------------------------

# 1) Create a numeric vector with at least 6 elements.
# 2) Now, create a character vector with four distinct strings.
# 3) Create a list that includes the objects you have created in the two previous tasks.
# 4) Print the character vector in the list to the console.
# 5) Create a data frame called "grades" with made up vote shares and parties.
#    Call the column "test_score" and "student". Add at least 3 observations.
#    Test scores should be numeric values, student should be characters (made up names)
#    Hint: Use the data.frame() function. To learn more about the function use ?data.frame() or Google!
# 6) How many rows and columns are there? Do not use nrow() or ncol()
# 7) Store the test score of the third student using operations on the dataframe in an object called "single"
# 8) Add up the test scores of the first and the second student. Store it in the object "sum"
# 9) Is "single" larger than "sum"? Store the answer in an object called "operation"
# 10) What datatype is "operations? Use a function to determine this?

# BONUS ------------------------------------------------------------------------
# Let's revisit the stringr example from the slides.
# You might need to experiment or google for this part"
# First, we need to be sure that the stringr package is loaded. Is this already the case? If yes, why?

# We still have our fictitious actor ID from the Twitter API
string <- "id:twitter.com:207584738373"

# We only want to keep the numbers using the function str_replace()
# It needs these arguments: str_replace(string, pattern, replacement)
clean_ID <- str_replace(string, "id:twitter.com:", "")

# let's check if it worked:
clean_ID

# 1) Now: Can you check if this processed string includes the number "4"? Use a function of the stringr package.
# 2) Let's say we have a string with additional white spaces before and after.
#    In addition, we have four question marks.

new_string = " id:twitter.com:207584738373???? "

# How can you get rid of the white space?
# How can we again just end up with the numbers?