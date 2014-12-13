queries <- list(
  status.changes = '
SELECT date(datetime) "date",
       user_id "user.id",
       count(*) "status.changes"
FROM ft_facebookchatstatuschange
GROUP BY date, "user.id"',
  online.duration = 'SELECT date, user_id "user.id", duration FROM ft_facebookduration')

q <- function(sql) sqldf(sql, drv = 'PostgreSQL', user = 'tlevine', dbname = 'tlevine')
