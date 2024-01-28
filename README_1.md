### Task 1: Instructions
Find names that have been given to over 5,000 babies of either sex every year for the 101 years from 1920 through 2020; recall that names only show up in our dataset when at least 5,000 babies have been given that name in a year.

- Select first_name and the total number of babies that have ever been given that name.
- Group by first_name and filter for those names that appear in all 101 years.
- Order the results by the total number of babies that have ever been given that name, descending.
- The line postgresql:///names is used to connect to the database; don't remove it.

### Task 2: Instructions
Classify each name's popularity according to the number of years that the name appears in the dataset.

- Select first_name, the sum of babies who've ever been given that name, and popularity_type.
- Classify all names in the dataset as 'Classic,' 'Semi-classic,' 'Semi-trendy,' or 'Trendy' based on whether the name appears in the dataset more than 80, 50, 20, or 0 times, respectively.
- Alias the new classification column as popularity_type.
- Order the results alphabetically by first_name.

### Task 3: Instructions
Let's take a look at the ten highest-ranked American female names in our dataset.

- Select name_rank, first_name, and the sum of babies who've ever had that name.
- RANK the first_name by the sum of babies who've ever had that name, aliasing as name_rank and showing the names in descending order by name_rank.
- Filter the data to include only results where sex equals 'F'.
- Limit to ten results.

### Task 4: Instructions
Return a list of first names which meet this friend's baby name criteria.

- Select only the first_name column.
- Filter the data for results where sex equals 'F', the year is greater than 2015, and the first_name ends in an 'a.'
- Group the data by first_name and order by the total number of babies ever given that first_name, descending.

### Task 5: Instructions
Find the cumulative number of babies named Olivia over the years since the name first appeared in our dataset.

- Select year, first_name, num of Olivias in that year, and cumulative_olivias.
- Using a window function, sum the cumulative number of babies who have ever been named Olivia up to that year; alias as cumulative_olivias.
- Filter the results so that only data for the name Olivia is returned.
- Order the results by year from the earliest year Olivia appeared in the dataset to the most recent.

### Task 6: Instructions
Write a query that selects the year and the maximum num of babies given any male name in that year.

- Select the year and the maximum num of babies given any one male name in that year; alias the maximum as max_num.
- Filter the data to include only results where sex equals 'M'.