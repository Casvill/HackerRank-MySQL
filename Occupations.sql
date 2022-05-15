/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:

COLUMN:        TYPE:
NAME           STRING
OCCUPATION      STRING

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
*/

select min(Doctor),min(professor),min(singer), min(actor)
from(
    select 
           (case when occupation = 'Doctor' then name end) as Doctor,
           (case when occupation = 'Professor' then name end) as Professor,
           (case when occupation = 'Singer' then name end) as Singer,
           (case when occupation = 'Actor' then name end) as Actor,
           row_number() over (partition by occupation order by name) fila
    from occupations
    order by name
    ) a
group by a.fila;
