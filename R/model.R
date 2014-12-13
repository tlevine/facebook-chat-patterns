#status <- q(queries$status.changes)
duration <- q(queries$online.duration)
duration$day <- factor(weekdays(duration$date),
                       levels = c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'))

# Switch for lme4 or something
m <- lm(duration ~ date + user.id + day, data = duration)

# Look at the residuals for a particular user.

# Find users who have high duration right now. Or just yesterday.
