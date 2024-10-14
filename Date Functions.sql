--Date Functions
select EventID,EventName,EventDate from Events
where EventDate between current_date and current_date + interval '30 days'
order by EventDate;