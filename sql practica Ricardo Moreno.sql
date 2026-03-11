/*Enunciado 1.
Explora el fichero flights y analiza:
1. Cuántos registros hay en total*/

    
SELECT COUNT(*) AS total_registros
FROM flights;

--Nos dice cuántas filas de datos tenemos en total en la tabla.--

/*2. Cuántos vuelos distintos hay*/

SELECT COUNT(DISTINCT unique_identifier) AS vuelos_distintos
FROM flights;

266

/*3. Cuántos vuelos tienen más de un registros*/

SELECT unique_identifier, COUNT(*) AS repeticiones
FROM flights
GROUP BY unique_identifier
HAVING COUNT(*) > 1;


unique_identifier,repeticiones
EI-8337-20230630-DUB-LHR,26
HO-1306-20221014-HKG-NKG,24
LS-1204-20211120-AGP-BHX,20
KL-1921-20240111-AMS-GDN,20
B6-2289-20231011-AMS-JFK,19
FR-5355-20240715-IBZ-MAD,18
AF-4839-20230608-MAD-IBZ,16
KL-1084-20230629-ORK-AMS,14
IB-3008-20240715-MAD-BCN,13
IB-5391-20221130-VLC-PMI,12
IB-3314-20211220-MAD-ARN,12
EY-4390-20211009-LPA-MAD,12
U2-8610-20210605-AGP-LGW,10
AM-6902-20211221-MAD-FRA,10
IB-5248-20211117-LPA-SVQ,9
EW-9593-20211009-PMI-DUS,9
IB-5310-20221218-SVQ-TFN,8
TP-752-20240715-LIS-CPH,8
IB-6824-20220714-GRU-MAD,6
IB-124-20240517-MAD-MEX,4
BA-287-20250524-LHR-MAD,4
AF-345-20260105-CDG-MAD,4
VY-147-20241007-BCN-AMS,4
VY-175-20240409-BCN-AMS,4
AA-172-20240920-JFK-MAD,4
IB-185-20240108-MAD-BCN,4
VY-262-20250604-BCN-PMI,4
AF-192-20241205-CDG-MAD,4
IB-215-20250106-MAD-JFK,4
BA-299-20250303-LHR-MAD,4
IB-221-20250614-MAD-MEX,4
AF-212-20250502-CDG-MAD,4
IB-230-20250525-MAD-JFK,4
AF-271-20250714-CDG-MAD,4
IB-123-20240925-MAD-JFK,4
IB-290-20250614-MAD-JFK,4
AA-260-20250719-JFK-MAD,4
VY-209-20251014-BCN-AMS,4
VY-249-20251107-BCN-PMI,4
AR-273-20250923-EZE-MAD,4
AR-266-20250109-EZE-MAD,4
IB-211-20250903-MAD-MEX,3
IB-251-20250210-MAD-MEX,3
KL-296-20250504-AMS-BCN,3
VY-254-20251124-BCN-PMI,3
IB-116-20240713-MAD-JFK,3
AF-216-20250215-CDG-MAD,3
VY-170-20240321-BCN-PMI,3
AR-208-20251020-EZE-MAD,3
IB-267-20251101-MAD-JFK,3
AF-205-20250811-CDG-MAD,3
KL-108-20240515-AMS-BCN,3
AR-346-20260120-EZE-MAD,3
BA-141-20240507-LHR-MAD,3
AA-294-20250922-JFK-MAD,3
IB-187-20241020-MAD-MEX,3
IB-244-20250810-MAD-BCN,3
VY-228-20250923-BCN-AMS,3
IB-135-20240313-MAD-BCN,3
VY-292-20250507-BCN-PMI,3
AF-166-20240815-CDG-MAD,3
IB-149-20240111-MAD-BCN,3
AA-291-20251110-JFK-MAD,3
AA-171-20240802-JFK-MAD,3
AF-220-20250216-CDG-MAD,3
IB-250-20251104-MAD-MEX,3
IB-218-20250208-MAD-BCN,3
IB-236-20250721-MAD-MEX,3
VY-245-20251114-BCN-AMS,3
AR-298-20250717-EZE-MAD,3
VY-142-20240811-BCN-AMS,3
AR-112-20241211-EZE-MAD,3
KL-289-20250820-AMS-BCN,3
VY-226-20251206-BCN-PMI,2
IB-219-20250817-MAD-MEX,2
VY-258-20251114-BCN-AMS,2
IB-180-20240711-MAD-BCN,2
AF-4804-20230523-MAD-PMI,2
VY-253-20251211-BCN-AMS,2
VY-196-20240609-BCN-AMS,2
IB-107-20240122-MAD-JFK,2
IB-272-20250620-MAD-JFK,2
IB-100-20240124-MAD-JFK,2
IB-167-20240517-MAD-JFK,2
BA-282-20250225-LHR-MAD,2
AA-281-20250405-JFK-MAD,2
VY-233-20251013-BCN-PMI,2
IB-139-20241003-MAD-JFK,2
BA-194-20240403-LHR-MAD,2
VY-122-20240402-BCN-AMS,2
AF-184-20240124-CDG-MAD,2
IB-131-20240113-MAD-JFK,2
AR-202-20250920-EZE-MAD,2
VY-247-20250122-BCN-AMS,2
BA-177-20240915-LHR-MAD,2
AA-160-20240213-JFK-MAD,2
KL-234-20250722-AMS-BCN,2
KL-163-20240613-AMS-BCN,2
AA-275-20251207-JFK-MAD,2
AR-264-20250102-EZE-MAD,2

---------------------------------------------------------------------------------------------------------------
/*Enunciado 2.
Por qué hay registro duplicados para un mismo vuelo. Para ello, selecciona varios vuelos y analiza la evolución temporal de cada vuelo.
1. Qué información cambia de un registro a otro*/

SELECT unique_identifier, arrival_status, delay_mins, created_at, updated_at
FROM flights
WHERE unique_identifier = 'LS-1204-20211120-AGP-BHX'
ORDER BY updated_at ASC;

SELECT unique_identifier, arrival_status, delay_mins, created_at, updated_at
FROM flights
WHERE unique_identifier = 'EI-8337-20230630-DUB-LHR'
ORDER BY updated_at ASC;

--Registros no duplicados sino actualizaciones. entiendo que la información cambia dependiendo del horario previsto,retrasoa aterrizaje, etc.--

-------------------------------------------------------------------------------------------------------------------

/*Enunciado 3.
Evalúa la calidad del dato. La calidad del dato nos indica si la información es consistente,
completa, coherente y representa una realidad verosímil. Para ello debemos establecer
unos criterios:


1. La información de created_at debe ser única para cada vuelo aunque tenga más de
un registro.*/

SELECT unique_identifier, COUNT(DISTINCT created_at) AS momentos_creacion
FROM flights
GROUP BY unique_identifier
HAVING COUNT(DISTINCT created_at) > 1;

--Como el resultado es 0, confirmamos que la información es consistente. No hay vuelos con doble fecha de nacimiento, lo que significa que el sistema respeta el origen de cada registro a pesar de las actualizaciones posteriores.--


/*2. La información de updated_at deber ser igual o más que la información de
created_at, lo que nos indica coherencia y consistencia*/

SELECT unique_identifier, created_at, updated_at
FROM flights
WHERE updated_at < created_at;

--Al no obtener resultados, demostramos que la información es coherente. Todos los eventos registrados ocurrieron en un orden temporal lógico (primero se crea, luego se actualiza).--

------------------------------------------------------------------------------------------------------------------------------

/*Enunciado 4.
El último estado de cada vuelo. Cada vuelo puede aparecer varias veces en el dataset, para
avanzar con nuestro análisis necesitamos quedarnos solo con el último registro de cada
vuelo.
Puedes crear una tabla o vista resultante de esta query en tu base de datos local, la
utilizaremos en los siguientes enunciados. Si prefieres no guardar la última información,
tendrás que hacer uso de esa query como una CTE en los enunciados siguientes*/

CREATE OR REPLACE VIEW last_flight_status AS
WITH ranked_flights AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY unique_identifier 
               ORDER BY updated_at DESC
           ) AS posicion
    FROM flights
)
SELECT *
FROM ranked_flights
WHERE posicion = 1;

--Al crear esta vista, hemos transformado un historial de actualizaciones en una foto actual del aeropuerto. Ahora cada fila representa un vuelo único con su estado final.--

---------------------------------------------------------------------------------------

/*Enunciado 5.
Considerando que los campos local_departure y local_actual_departure son necesarios
para el análisis, valida y reconstruye estos valores siguiendo estas reglas:


1. Si local_departure es nulo, utiliza created_at.
2. Si local_actual_departure es nulo, utiliza local_departure. Si este también es nulo,
utiliza created_at.
Crea dos nuevos campos:
● effective_local_departure
● effective_local_actual_departure
Extra:
Realiza las validaciones para los campos local_arrival y local_actual_arrival*/

SELECT 
    unique_identifier,
    COALESCE(local_departure, created_at) AS effective_local_departure,
    COALESCE(local_actual_departure, local_departure, created_at) AS effective_local_actual_departure,
    COALESCE(local_arrival, created_at) AS effective_local_arrival,
    COALESCE(local_actual_arrival, local_arrival, created_at) AS effective_local_actual_arrival,
    arrival_status,
    airline_code
FROM last_flight_status;

/*
unique_identifier,effective_local_departure,effective_local_actual_departure,effective_local_arrival,effective_local_actual_arrival,arrival_status,airline_code
AA-101-20240219-JFK-MAD,2024-02-19 18:00:00,2024-02-19 18:00:00,2024-02-20 01:00:00,2024-02-20 00:55:00,OT,AA
AA-102-20241001-JFK-MAD,2024-10-01 11:00:00,2024-10-01 11:45:00,2024-10-02 05:00:00,2024-10-02 05:40:00,DY,AA
AA-120-20241007-JFK-MAD,2024-10-07 09:00:00,2024-10-07 09:20:00,2024-10-07 21:00:00,2024-10-07 21:15:00,DY,AA
AA-121-20240120-JFK-MAD,2024-01-20 15:00:00,2024-01-20 15:00:00,2024-01-21 05:00:00,2024-01-21 04:55:00,OT,AA
AA-136-20241123-JFK-MAD,2024-11-23 20:00:00,2024-11-23 20:05:00,2024-11-24 05:00:00,2024-11-24 05:00:00,DY,AA
AA-148-20240809-JFK-MAD,2024-08-09 06:00:00,2024-08-09 06:10:00,2024-08-09 14:00:00,2024-08-09 14:05:00,DY,AA
AA-150-20241214-JFK-MAD,2024-12-14 05:00:00,2024-12-14 05:45:00,2024-12-14 13:00:00,2024-12-14 13:40:00,DY,AA
AA-151-20240112-JFK-MAD,2024-01-12 09:00:00,2024-01-12 09:00:00,2024-01-12 22:00:00,2024-01-12 21:55:00,OT,AA
AA-158-20240601-JFK-MAD,2024-06-01 08:00:00,2024-06-01 08:20:00,2024-06-01 19:00:00,2024-06-01 19:15:00,DY,AA
AA-160-20240213-JFK-MAD,2024-02-13 11:00:00,2024-02-13 11:45:00,2024-02-13 22:00:00,2024-02-13 22:40:00,DY,AA
AA-161-20240922-JFK-MAD,2024-09-22 11:00:00,2024-09-22 11:00:00,2024-09-22 23:00:00,2024-09-22 22:55:00,OT,AA
AA-171-20240802-JFK-MAD,2024-08-02 12:00:00,2024-08-02 12:00:00,2024-08-02 20:00:00,2024-08-02 19:55:00,OT,AA
AA-172-20240920-JFK-MAD,2024-09-20 15:00:00,2024-09-20 15:45:00,2024-09-21 05:00:00,2024-09-21 05:40:00,DY,AA
AA-200-20250612-JFK-MAD,2025-06-12 19:00:00,2025-06-12 19:05:00,2025-06-13 06:00:00,2025-06-13 06:00:00,DY,AA
AA-222-20250115-JFK-MAD,2025-01-15 07:00:00,2025-01-15 07:05:00,2025-01-15 19:00:00,2025-01-15 19:00:00,DY,AA
AA-229-20250313-JFK-MAD,2025-03-13 11:00:00,2025-03-13 11:45:00,2025-03-14 02:00:00,2025-03-14 02:40:00,DY,AA
AA-252-20250617-JFK-MAD,2025-06-17 13:00:00,2025-06-17 13:10:00,2025-06-17 22:00:00,2025-06-17 22:05:00,DY,AA
AA-260-20250719-JFK-MAD,2025-07-19 09:00:00,2025-07-19 09:00:00,2025-07-19 22:00:00,2025-07-19 21:55:00,OT,AA
AA-265-20250419-JFK-MAD,2025-04-19 11:00:00,2025-04-19 11:00:00,2025-04-19 21:00:00,2025-04-19 20:55:00,OT,AA
AA-274-20251014-JFK-MAD,2025-10-14 08:00:00,2025-10-14 08:45:00,2025-10-15 02:00:00,2025-10-15 02:40:00,DY,AA
AA-275-20251207-JFK-MAD,2025-12-07 18:00:00,2025-12-07 18:10:00,2025-12-08 08:00:00,2025-12-08 08:05:00,DY,AA
AA-279-20250911-JFK-MAD,2025-09-11 08:00:00,2025-09-11 08:45:00,2025-09-11 21:00:00,2025-09-11 21:40:00,DY,AA
AA-281-20250405-JFK-MAD,2025-04-05 20:00:00,2025-04-05 20:05:00,2025-04-06 06:00:00,2025-04-06 06:00:00,DY,AA
AA-291-20251110-JFK-MAD,2025-11-10 06:00:00,2025-11-10 06:20:00,2025-11-10 16:00:00,2025-11-10 16:15:00,DY,AA
AA-294-20250922-JFK-MAD,2025-09-22 16:00:00,2025-09-22 16:00:00,2025-09-23 00:00:00,2025-09-23 00:00:00,CX,AA
AC-9183-20240102-BCN-FRA,2024-01-02 05:50:00,2024-01-02 06:03:00,2024-01-02 08:00:00,2024-01-02 08:00:00,NS,AC
AF-113-20240309-CDG-MAD,2024-03-09 09:00:00,2024-03-09 09:20:00,2024-03-09 13:00:00,2024-03-09 13:15:00,DY,AF
AF-132-20240314-CDG-MAD,2024-03-14 10:00:00,2024-03-14 10:00:00,2024-03-14 15:00:00,2024-03-14 14:55:00,OT,AF
AF-138-20240917-CDG-MAD,2024-09-17 10:00:00,2024-09-17 10:00:00,2024-09-17 11:00:00,2024-09-17 10:55:00,OT,AF
AF-156-20240610-CDG-MAD,2024-06-10 12:00:00,2024-06-10 12:45:00,2024-06-10 16:00:00,2024-06-10 16:40:00,DY,AF
AF-166-20240815-CDG-MAD,2024-08-15 11:00:00,2024-08-15 11:45:00,2024-08-15 20:00:00,2024-08-15 20:40:00,DY,AF
AF-183-20240611-CDG-MAD,2024-06-11 17:00:00,2024-06-11 17:05:00,2024-06-11 22:00:00,2024-06-11 22:00:00,DY,AF
AF-184-20240124-CDG-MAD,2024-01-24 06:00:00,2024-01-24 06:45:00,2024-01-24 12:00:00,2024-01-24 12:40:00,DY,AF
AF-186-20241104-CDG-MAD,2024-11-04 11:00:00,2024-11-04 11:05:00,2024-11-04 19:00:00,2024-11-04 19:00:00,DY,AF
AF-192-20241205-CDG-MAD,2024-12-05 18:00:00,2024-12-05 18:20:00,2024-12-05 21:00:00,2024-12-05 21:15:00,DY,AF
AF-198-20240801-CDG-MAD,2024-08-01 07:00:00,2024-08-01 07:10:00,2024-08-01 12:00:00,2024-08-01 12:05:00,DY,AF
AF-205-20250811-CDG-MAD,2025-08-11 10:00:00,2025-08-11 10:10:00,2025-08-11 11:00:00,2025-08-11 11:05:00,DY,AF
AF-212-20250502-CDG-MAD,2025-05-02 12:00:00,2025-05-02 12:05:00,2025-05-02 17:00:00,2025-05-02 17:00:00,DY,AF
AF-213-20250222-CDG-MAD,2025-02-22 12:00:00,2025-02-22 12:20:00,2025-02-22 17:00:00,2025-02-22 17:15:00,DY,AF
AF-216-20250215-CDG-MAD,2025-02-15 14:00:00,2025-02-15 14:05:00,2025-02-16 02:00:00,2025-02-16 02:00:00,DY,AF
AF-217-20250803-CDG-MAD,2025-08-03 06:00:00,2025-08-03 06:05:00,2025-08-03 13:00:00,2025-08-03 13:00:00,DY,AF
AF-220-20250216-CDG-MAD,2025-02-16 16:00:00,2025-02-16 16:05:00,2025-02-16 23:00:00,2025-02-16 23:00:00,DY,AF
AF-238-20250902-CDG-MAD,2025-09-02 07:00:00,2025-09-02 07:45:00,2025-09-02 11:00:00,2025-09-02 11:40:00,DY,AF


Al reconstruir estos campos, estamos eliminando los NULL de nuestra base de datos */

----------------------------------------------------------------------------------------------

/*Enunciado 6.
Análisis del estado del vuelo. Haciendo uso del resultado del enunciado 4, analiza los
estados de los vuelos.
1. Qué estados de vuelo existen*/

arrival_status
CX
DY
EY
NS
OT

/*2. Cuántos vuelos hay por cada estado*/

arrival_status,total_vuelos
DY,143
OT,93
EY,9
NS,8
,7
CX,6

--¿Podrías decir qué significa las siglas de cada estado?--

OT ON TIME
DY DELAYED 
NS NO SHOW


--Si analizamos los datos vemos que tenmos los diferentes tipos de status de vuelos y cuantos tenemos por cada status observando que tenemos 7 vuelos sin asignacion de status o NULL.--

----------------------------------------------------------------------------------------------------

/*Enunciado 7.
País de salida de cada vuelo. Tienes disponible un csv. con información de aeropuertos
airports.csv. Haciendo uso del resultado del enunciado 4, analiza los aeropuertos de salida.

1. De qué país despegan los vuelos*/

SELECT DISTINCT a.country
FROM last_flight_status f
JOIN airports a ON f.departure_airport = a.airport_code;

country

France
Germany
Italy
Netherlands
Spain
United Kingdom
United States


--2. Cuántos vuelos despegan por país--

SELECT 
    a.country, 
    COUNT(*) AS total_despegues
FROM last_flight_status f
JOIN airports a ON f.departure_airport = a.airport_code
GROUP BY a.country
ORDER BY total_despegues DESC;

country,total_despegues
Spain,131
France,27
United States,26
Netherlands,19
United Kingdom,18
Italy,1
Germany,1

--este resultado nos puede indicar que el database que estamos usando esta mas enfocado españa tanto operaciones nacionales como internaciones.--

--------------------------------------------------------------------------------------

/*Enunciado 8.
Delay medio y estado de vuelo por país de salida. Haciendo uso del resultado del enunciado
4, analiza el estado y el delay/retraso medio con el objetivo de identificar si existen países
que pueden presentar problemas operativos en los aeropuertos de salida.

1. Cuál es el delay medio por país*/

SELECT 
    a.country, 
    ROUND(AVG(f.delay_mins), 2) AS delay_medio
FROM last_flight_status f
JOIN airports a ON f.departure_airport = a.airport_code
GROUP BY a.country
ORDER BY delay_medio DESC;

country,delay_medio
Germany, NULL
Italy,NULL
United States,12.71
France,9.23
Spain,8.69
United Kingdom,2.50
Netherlands,-1.18

--podemos observar que no tenemos registros de retraso para italia y alemania y holanda con una media de tiempo a favor de 1,18, tambien podemos obserque el pais con mas retraso en madia es EEUU con un 12.71--

--2. Cuál es la distribución de estados de vuelos por país.--

SELECT 
    a.country, 
    f.arrival_status, 
    COUNT(*) AS total_vuelos
FROM last_flight_status f
JOIN airports a ON f.departure_airport = a.airport_code
GROUP BY a.country, f.arrival_status
ORDER BY a.country, total_vuelos DESC;

/*
country,arrival_status,total_vuelos
France,DY,23
France,OT,4
Germany,,1
Italy,OT,1
Netherlands,DY,10
Netherlands,OT,8
Netherlands,NS,1
Spain,DY,67
Spain,OT,55
Spain,,4
Spain,NS,3
Spain,CX,1
Spain,EY,1
United Kingdom,DY,10
United Kingdom,OT,6
United Kingdom,NS,1
United Kingdom,CX,1
United States,DY,17
United States,OT,7
United States,CX,1
United States,EY,1
*/

----------------------------------------------------------------------------------------------------------------------------

/*Enunciado 9.
El estado de vuelo por país y por época del año. Dado que no en todas las épocas del año
las condiciones climatólogicas son iguales, analiza si la estaciones del año impactan en el
delay medio por país. Considera la siguiente clasificación de meses del año por época:
● Invierno: diciembre, enero, febrero
● Primavera: marzo, abril, mayo
● Verano: junio, julio, agosto
● Otoño: septiembre, octubre, noviembre*/

SELECT 
    a.country,
    CASE 
        WHEN EXTRACT(MONTH FROM f.local_departure) IN (12, 1, 2) THEN 'Invierno'
        WHEN EXTRACT(MONTH FROM f.local_departure) IN (3, 4, 5) THEN 'Primavera'
        WHEN EXTRACT(MONTH FROM f.local_departure) IN (6, 7, 8) THEN 'Verano'
        WHEN EXTRACT(MONTH FROM f.local_departure) IN (9, 10, 11) THEN 'Otoño'
    END AS estacion,
    ROUND(AVG(f.delay_mins), 2) AS delay_medio,
    COUNT(*) AS total_vuelos
FROM last_flight_status f
JOIN airports a ON f.departure_airport = a.airport_code
GROUP BY a.country, estacion
ORDER BY a.country, delay_medio DESC;


/*
country,estacion,delay_medio,total_vuelos
France,Verano,11.88,8
France,Invierno,10.00,11
France,Otoño,8.75,4
France,Primavera,2.50,4
Germany,Invierno,,1
Italy,Verano,,1
Netherlands,Otoño,0.00,6
Netherlands,Primavera,0.00,3
Netherlands,Invierno,-1.67,4
Netherlands,Verano,-2.50,6
Spain,,,10
Spain,Verano,12.80,28
Spain,Primavera,9.62,28
Spain,Otoño,8.21,31
Spain,Invierno,3.96,34
United Kingdom,Otoño,7.50,6
United Kingdom,Primavera,1.67,6
United Kingdom,Invierno,0.00,6
United States,Otoño,23.13,10
United States,Primavera,11.67,3
United States,Invierno,10.00,7
United States,Verano,2.50,6


analizando esto podemos conluir en que paises como españa y francia parecen tener mayor retraso en los meses de verano por demanda de viajes
paises como EEUU tienen mayor retradso en otoño e invierno, paises bajos en cualquier epoca tienen numeros negativos y reino unido tienen tiene una puntualidad casi perfecta*/

---------------------------------------------------------------------------------------

/*Enunciado 10.
Frecuencia de actualización de los vuelos. Volviendo al análisis de la calidad del dataset,
explora con qué frecuencia se registran actualizaciones de cada vuelo y calcula la
frecuencia media de actualización por aeropuerto de salida*/


frecuencia de actualizacion: 
SELECT unique_identifier, COUNT(*) AS numero_actualizaciones
FROM flights
GROUP BY unique_identifier
ORDER BY numero_actualizaciones DESC;

/*
unique_identifier,numero_actualizaciones
AV-47-20211101-MAD-BOG	36	
KL-1704-20240111-MAD-AMS	26	
EI-8337-20230630-DUB-LHR	26	
HO-1306-20221014-HKG-NKG	24	
KL-988-20220801-LCY-AMS	24	
BA-8461-20240401-LCY-IBZ	22	
KL-932-20220616-DUB-AMS	21	
LS-1204-20211120-AGP-BHX	20	
KL-1921-20240111-AMS-GDN	20	
B6-2289-20231011-AMS-JFK	19	
*/

--frecuencia media de actualizacion:

WITH conteo_vuelos AS (
    SELECT departure_airport, unique_identifier, COUNT(*) AS actualizaciones
    FROM flights
    GROUP BY departure_airport, unique_identifier
)
SELECT 
    departure_airport, 
    ROUND(AVG(actualizaciones), 2) AS media_actualizaciones
FROM conteo_vuelos
GROUP BY departure_airport
ORDER BY media_actualizaciones DESC;

/*
departure_airport,media_actualizaciones
HKG	24.00	
DUB	23.50	
LCY	23.00	
IBZ	18.00	
CPH	15.00	
ORK	14.00	
TFN	13.00	
SVQ	12.50	
AGP	11.67	
VLC	11.00	
LPA	10.50	
MUC	10.00	
PMI	9.00	
LIS	8.50	
FCO	8.00	
GRU	6.00	
AMS	4.63	
MAD	4.10	
LHR	3.67	
CDG	3.56	
JFK	3.12	
BCN	3.06	
EZE	3.05	


La frecuencia media nos indica la riqueza informativa de cada aeropuerto. 
Un promedio cercano a 1 indica datos estáticos, mientras que promedios superiores a 2 indican un sistema de monitorización dinámico y en tiempo real.
*/

-------------------------------------------------------------------------------------------------
/*Enunciado 11.
Consistencia del dato. El campo unique_identifier identifica el vuelo y se construye con:
aerolínea, número de vuelo, fecha y aeropuertos. Para cada vuelo (último snapshot),
comprueba si la información del unique_identifier es consistente con las columnas del
dataset.
1. Crea un flag is_consistent.*/

SELECT 
    unique_identifier,
    airline_code,
    departure_airport,
    arrival_airport,
    CASE 
        WHEN unique_identifier LIKE CONCAT(airline_code, '%', departure_airport, '-', arrival_airport) THEN 1
        ELSE 0 
    END AS is_consistent
FROM last_flight_status;

/*
unique_identifier,airline_code,departure_airport,arrival_airport,is_consistent
AA-101-20240219-JFK-MAD,AA,JFK,MAD,1
AA-102-20241001-JFK-MAD,AA,JFK,MAD,1
AA-120-20241007-JFK-MAD,AA,JFK,MAD,1
AA-121-20240120-JFK-MAD,AA,JFK,MAD,1
AA-136-20241123-JFK-MAD,AA,JFK,MAD,1
AA-148-20240809-JFK-MAD,AA,JFK,MAD,1
AA-150-20241214-JFK-MAD,AA,JFK,MAD,1
AA-151-20240112-JFK-MAD,AA,JFK,MAD,1
AA-158-20240601-JFK-MAD,AA,JFK,MAD,1
AA-160-20240213-JFK-MAD,AA,JFK,MAD,1
AA-161-20240922-JFK-MAD,AA,JFK,MAD,1
AA-171-20240802-JFK-MAD,AA,JFK,MAD,1
AA-172-20240920-JFK-MAD,AA,JFK,MAD,1
AA-200-20250612-JFK-MAD,AA,JFK,MAD,1
AA-222-20250115-JFK-MAD,AA,JFK,MAD,1
AA-229-20250313-JFK-MAD,AA,JFK,MAD,1
AA-252-20250617-JFK-MAD,AA,JFK,MAD,1
AA-260-20250719-JFK-MAD,AA,JFK,MAD,1
AA-265-20250419-JFK-MAD,AA,JFK,MAD,1
AA-274-20251014-JFK-MAD,AA,JFK,MAD,1
AA-275-20251207-JFK-MAD,AA,JFK,MAD,1
AA-279-20250911-JFK-MAD,AA,JFK,MAD,1
AA-281-20250405-JFK-MAD,AA,JFK,MAD,1
AA-291-20251110-JFK-MAD,AA,JFK,MAD,1
VY-8880-20240201-BCN-PMI,IB,MAD,JFK,0
VY-8881-20240201-BCN-PMI,IB,MAD,JFK,0
VY-8882-20240201-BCN-PMI,IB,MAD,JFK,0
VY-8883-20240201-BCN-PMI,IB,MAD,JFK,0
VY-8884-20240201-BCN-PMI,IB,MAD,JFK,0
*/

--2. Calcula cuántos vuelos no son consistentes.

SELECT COUNT(*) AS total_no_consistentes
FROM last_flight_status
WHERE unique_identifier NOT LIKE CONCAT(airline_code, '%', departure_airport, '-', arrival_airport);

--Nos sale 15 veces.

--3. Usando la tabla airlines, muestra el nombre de la aerolínea y cuántos vuelos no consistentes tiene.

SELECT 
    a.name AS nombre_aerolinea, 
    COUNT(*) AS total_errores
FROM last_flight_status f
JOIN airlines a ON f.airline_code = a.airline_code
WHERE f.unique_identifier NOT LIKE CONCAT(f.airline_code, '%', f.departure_airport, '-', f.arrival_airport)
GROUP BY a.name;

/*
nombre_aerolinea,total_errores
Iberia,15

IBERIA TIENES LOS 15 VUELOS NO CONSISTENTES.

investigue un poco con gpt y me ayude a analizar porque esos 15 vuelos estan mal y es porque tienen ID de British Airways asociados a vuelos de iberia y que podrian ser vuelos de codigos compartidos.

unique_identifier,airline_code,departure_airport,arrival_airport,lo_que_deberia_ser
BA-7770-20240620-LHR-MAD,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
BA-7771-20240620-LHR-MAD,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
BA-7772-20240620-LHR-MAD,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
BA-7773-20240620-LHR-MAD,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
BA-7774-20240620-LHR-MAD,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
IB-9990-20250115-MAD-JFK,IB,BCN,JFK,IB-XXXX-YYYYMMDD-BCN-JFK
IB-9991-20250115-MAD-JFK,IB,BCN,JFK,IB-XXXX-YYYYMMDD-BCN-JFK
IB-9992-20250115-MAD-JFK,IB,BCN,JFK,IB-XXXX-YYYYMMDD-BCN-JFK
IB-9993-20250115-MAD-JFK,IB,BCN,JFK,IB-XXXX-YYYYMMDD-BCN-JFK
IB-9994-20250115-MAD-JFK,IB,BCN,JFK,IB-XXXX-YYYYMMDD-BCN-JFK
VY-8880-20240201-BCN-PMI,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
VY-8881-20240201-BCN-PMI,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
VY-8882-20240201-BCN-PMI,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
VY-8883-20240201-BCN-PMI,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK
VY-8884-20240201-BCN-PMI,IB,MAD,JFK,IB-XXXX-YYYYMMDD-MAD-JFK

*/
--------------------------------------------------------------------------
