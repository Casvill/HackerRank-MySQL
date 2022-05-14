/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

FIELD:   TYPE:
ID       NUMBER
CITY     VARCHAR(21)
STATE    VARCHAR(22)
LAT_N    NUMBER
LONG_W   NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

select distinct city 
from station 
where lower(substr(city,1,1)) not in ('a','e','i','o','u') 
or lower(substr(city,-1,1)) not in ('a','e','i','o','u');
