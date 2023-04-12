# Case Study: How Does a Bike-Share Navigate Speedy Success?
### Summary

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cyclistic is a company of bike-share base in Chicago with a total of 5824 bicycles that are geotracked and locked into a network with 689 stations. They have been able to create this ecosystem by using pricing plans that customers must have to use the bikes. The plans that they offer are single-ride passes, full-day passes and annual memberships. Customers that buy one of the first two plans are classified as casual riders and the ones who buy the annual memberships are classified as Cyclistic members.
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Until now everything has been going economically great for the company, but a study made by Cyclistic finance analysts has uncover that annual members are more profitable than casual riders. With that in mind, the marketing department has set a goal to a marketing strategy to convert casual riders to annual members. To accomplish this goal, the marketing analyst team will begin analyzing the Cyclistic historical bike trip data.

---

### Questions
1.	How do annual members and casual riders use Cyclistic bikes differently?
2.	Why would casual riders buy Cyclistic annual memberships?
3.	How can Cyclistic use digital media to influence casual riders to become members?

---

### Gathering

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the gathering stage, the first thing to do was search for the data. The data are from first party, making them a reliable source. Also, these files are stored in AWS Cloud and are in csv format. After that, I opened one file in Excel to see the structure and could see that it will require cleaning before the analysis stage.
  
---

### Transform

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the transformation stage I start by creating a copy of each file but in the ‘xlsx’ format. This file will be the one that I will use to work with the data. After that, in each new file I began creating a new column called “Ride_Length” which will store the total time of each ride by user. Then I edited all data types of each column and did some column sorting.

---

### Analysis

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the analysis stage I begin working in the spreadsheet file by finding the Max and Average ride length. Then I created a Pivot Table to see the total ride length membership per day. After that I exported all files to MySQL and began searching the total user by membership per month and the total time ride length by membership per month.  Finally, I exported all the result in csv files to begin with the visualization stage.

---

### Visualization

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the visualization stage I started creating the visuals in Tableau with the existing analysis stage results. 

![Users by Memberships](Visuals/R_C_M.png)

![Total Time by Memberships](Visuals/T_T_M.png)

---

### Conclusion

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;After doing all the necessary research for this case study, casual members tend to begin using the bikes between Spring and Summer. With that in mind, the strategy should focus on showing the benefit of having an annual membership via the digital media and giving discount for the annual membership to casual riders between April and August. This will increase the odds for a casual rider to get the membership. Finally, the next step is begin talking with the marketing department to start creating strategies for those months.

