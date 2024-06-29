
# Education for All Fundraising Case Study

## Project Overview

The primary goal of this project is to present insights from the donation data to inform the fundraising strategy and increase donations for the charity, Education for All.

## Objectives

1. Increase the number of donors in the database.
2. Increase the donation frequency of donors.
3. Increase the value of donations in the database.

## Datasets

### Donation_Data

Contains the following data:
- `id`: Donor ID
- `first_name`: Donor first name
- `last_name`: Donor last name
- `email`: Donor email address
- `gender`: Donor gender
- `job_field`: Donor job field
- `donation`: Donation amount
- `state`: Donor state of residence (US)
- `shirt_size`: Donor t-shirt size

### Donor_Data

Contains the following data:
- `id`: Donor ID
- `donation_frequency`: Frequency of donation
- `university`: Donor University attended
- `car`: Donor car make
- `second_language`: Donor second language
- `favourite_colour`: Donor favourite colour
- `movie_genre`: Donor favourite movie genre

## SQL Queries and Insights

### 1. Total Donation Amount
```sql
SELECT SUM(donation) AS total_donation
FROM Donation_Data;
```

### 2. Total Donation by Gender
```sql
SELECT gender, SUM(donation) AS total_donation
FROM Donation_Data
GROUP BY gender;
```

### 3. Total Donation and Number of Donations by Gender
```sql
SELECT gender, SUM(donation) AS total_donation, COUNT(donation) AS number_of_donations
FROM Donation_Data
GROUP BY gender;
```

### 4. Total Donation by Frequency of Donation
```sql
SELECT donation_frequency, SUM(donation) AS total_donation
FROM Donor_Data
JOIN Donation_Data ON Donor_Data.id = Donation_Data.id
GROUP BY donation_frequency;
```

### 5. Total Donation and Number of Donations by Job Field
```sql
SELECT job_field, SUM(donation) AS total_donation, COUNT(donation) AS number_of_donations
FROM Donation_Data
GROUP BY job_field;
```

### 6. Total Donation and Number of Donations Above $200
```sql
SELECT SUM(donation) AS total_donation, COUNT(donation) AS number_of_donations
FROM Donation_Data
WHERE donation > 200;
```

### 7. Total Donation and Number of Donations Below $200
```sql
SELECT SUM(donation) AS total_donation, COUNT(donation) AS number_of_donations
FROM Donation_Data
WHERE donation < 200;
```

### 8. Top 10 States Contributing the Highest Donations
```sql
SELECT state, SUM(donation) AS total_donation
FROM Donation_Data
GROUP BY state
ORDER BY total_donation DESC
LIMIT 10;
```

### 9. Top 10 States Contributing the Least Donations
```sql
SELECT state, SUM(donation) AS total_donation
FROM Donation_Data
GROUP BY state
ORDER BY total_donation ASC
LIMIT 10;
```

### 10. Top 10 Cars Driven by the Highest Donors
```sql
SELECT car, SUM(donation) AS total_donation
FROM Donor_Data
JOIN Donation_Data ON Donor_Data.id = Donation_Data.id
GROUP BY car
ORDER BY total_donation DESC
LIMIT 10;
```

## Recommendations

Based on the insights generated, the following recommendations can help increase donations:

1. **Increase Number of Donors**: 
   - Leverage targeted marketing campaigns to attract donors from top contributing states.
   - Develop partnerships with universities and companies to reach potential donors.

2. **Increase Donation Frequency**:
   - Implement a donor loyalty program to encourage repeat donations.
   - Use personalized communication to engage donors based on their interests and previous donation patterns.

3. **Increase Value of Donations**:
   - Highlight the impact of larger donations through success stories and testimonials.
   - Offer incentives such as exclusive events or recognition for higher donation tiers.

---

This detailed analysis and the corresponding SQL queries provide a comprehensive overview of donor behavior and donation patterns, supporting strategic decision-making to enhance the fundraising efforts of Education for All.
