--Ranking Data
select ParticipantID,ParticipantName,Score,rank() over(order by score) from participant;