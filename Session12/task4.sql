-- Write a recursive CTE that generates a list of dates for the next 7 days starting from today, similar to how BookMyShow shows available dates for movie bookings.<br><br><em><strong>Hint:</strong> Use a base case for today and recursion to add one day at a time.</em>

USE CTE_Practice;

WITH RECURSIVE BookingDates AS (
    -- Base case: today's date
    SELECT CURDATE() AS booking_date

    UNION ALL

    -- Recursive case: add one day
    SELECT DATE_ADD(booking_date, INTERVAL 1 DAY)
    FROM BookingDates
    WHERE booking_date < DATE_ADD(CURDATE(), INTERVAL 6 DAY)
)
SELECT booking_date
FROM BookingDates;