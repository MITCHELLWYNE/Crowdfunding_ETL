# Crowdfunding_ETL
## Create the Category and Subcategory DataFrames

Our first task was to create two data frames. The first needed to display category_id and categories. The second needed to display subcategory_id and subcategories. To create these, the excel file named, crowdfunding.xlsx, was read in. The first step was to use the pandas function .columns to see what columns were available. The category and subcategory information was all listed within a single column. To break it apart into individual columns, we used the .str.split function to split the data on the '/' and expanded the table to include the new columns. The old concatanated column was dropped. 
Next, .unique was utilized to retrieve the unique categories and subcategories and the number of distinct values of each were found. Arrays were created to match each length and list comprehension was used to created IDs. Two new data frames were created containing the ID and category/subcategory respectively. These dataframes were exported to csv files (links and screenshots below).

category csv:
[Link to category.csv](https://github.com/MITCHELLWYNE/Crowdfunding_ETL/blob/3fa804faa27a9bbe5dcf9c8dde0cb36b8d587173/Starter_Files/Resources/campaign.csv)

![This is a screenshot of the category df](https://github.com/MITCHELLWYNE/Crowdfunding_ETL/blob/a33377cf1f7874cc54c16126d4db23f977303e1c/Starter_Files/Resources/Category_screenshot.png)

subcategory csv:
[Link to subcategory.csv](https://github.com/MITCHELLWYNE/Crowdfunding_ETL/blob/3fa804faa27a9bbe5dcf9c8dde0cb36b8d587173/Starter_Files/Resources/subcategory.csv)

![This is a screenshot of the subcategory df](https://github.com/MITCHELLWYNE/Crowdfunding_ETL/blob/a33377cf1f7874cc54c16126d4db23f977303e1c/Starter_Files/Resources/subcategory_screenshot.png)

## Create the Campaign DataFrame
To create the campaign dataframe, the excel file, crowdfunding.xlsx, was extracted and transformed. 
The fist step was to create a copy of the initial data to work of of in order to protect the initial data. This new data frame was called campaign_df. Cpecific columns were renamed for clarity. Data types were checked and changed to be appropriate for the data. Columns with dates were transformed into datetime format using the datetime library. 

Next, the campaign and category dataframes were merged on the "category" column and the subcategory_df on the "subcategory" column. This merged dataframe was then cleaned of any unwanted columns. and exported to a csv file (link below)

campaign csv:
[Link to campaign.csv](https://github.com/MITCHELLWYNE/Crowdfunding_ETL/blob/95ecb8a5b9f7e22e356a6248a6a179c59058a277/Starter_Files/Resources/campaign.csv)

![This is a screenshot of the campaign df]
(https://github.com/MITCHELLWYNE/Crowdfunding_ETL/blob/9f31b1b7abe62e6b830dc1a66f13ef3423cb181a/Starter_Files/Resources/Campaign_df_cleaned.png)

