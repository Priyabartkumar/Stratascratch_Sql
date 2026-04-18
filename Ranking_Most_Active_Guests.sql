Question id: 10159
Question:
Identify the most engaged guests by ranking them according to their overall messaging activity. The most active guest, meaning the one who has exchanged the most messages with hosts, should have the highest rank. 
If two or more guests have the same number of messages, they should have the same rank. Importantly, the ranking shouldn't skip any numbers, even if many guests share the same rank. 
Present your results in a clear format, showing the rank, guest identifier, and total number of messages for each guest, ordered from the most to least active.

Query:
Select 
  id_guest,
  DENSE_RANK() over (order by sum(n_messages) desc) as ranking,
  sum(n_messages) as sum_n_messages
from airbnb_contacts
group by id_guest
order by sum_n_messages desc;
