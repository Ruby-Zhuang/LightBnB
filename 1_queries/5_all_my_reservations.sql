/*
Show all reservations for a user.
- Select all columns from the reservations table, all columns from the properties table, and the average rating of the property.
- The reservations will be for a single user, so use 1 for the user_id.
- Order the results from the earliest start_date to the most recent start_date.
- These will end up being filtered by either "Upcoming Reservations" or "Past Reservations", so only get reservations where the end_date is in the past.
- Use now()::date to get today's date.
- Limit the results to 10.
*/

SELECT properties.*, reservations.*, avg(rating) as average_rating -- SELECT properties.id, cost_per_night, reservations.start_date, avg(rating) as average_rating (to see only id, title, cost_per_night, start_date, average_rating)
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;