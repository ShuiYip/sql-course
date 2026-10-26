SELECT ps.PatientId,
       ps.ward,
       h.HospitalType,
       h.Hospital
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = h.Hospital
WHERE  h.HospitalType = 'teaching';

SELECT   h.Reach,
         count(*) AS NumberOfPatients
FROM     PatientStay AS ps
         INNER JOIN
         DimHospital AS h
         ON ps.Hospital = h.Hospital
GROUP BY h.Reach;

SELECT ps.PatientId,
       ps.ward,
       ps.AdmittedDate,
       ps.DischargeDate,
       h.Hospital
FROM   PatientStay AS ps
       INNER JOIN DimHospital AS h
         ON ps.Hospital = h.Hospital
WHERE  h.Hospital IN ('Kingston', 'PRUH');

