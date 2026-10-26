/*
Example lesson stub
*/
SELECT		PS.PatientId,
			PS.Hospital,
			ps.Ward,
			DATEADD(week, -2, PS.AdmittedDate) AS ReminderDate,
			PS.AdmittedDate,
			PS.DischargeDate,
			DATEDIFF(day, ps.AdmittedDate, ps.DischargeDate) AS lengthofStay,
			DATEADD(MONTH, 3, PS.DischargeDate) AS ApptDate
FROM		Patientstay AS PS
WHERE		ps.Hospital IN ('kingston', 'pruh')
			AND ps.Ward LIKE '%surgery'
			AND ps.AdmittedDate >= '2024-02-27'
			AND ps.AdmittedDate <= '2024-02-29'
ORDER BY	ps.AdmittedDate, ps.DischargeDate;


-- SELECT DATEADD(week, -2, '2026-10-26') AS TestValue