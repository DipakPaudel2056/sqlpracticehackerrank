-- here in this problem we are trying to find the average time to process by each machine where the data are giben as the machine id, process id and process type 
select
    a.machine_id,
    round(
        avg(
            case
                when a.activity_type = "end" then a.timestamp
            end
        ) - avg(
            case
                when a.activity_type = "start" then timestamp
            end
        ),
        3
    ) as processing_time
from
    Activity a
group by
    a.machine_id;