       PROGRAM DECAY
       REAL INIT, HFLIFE, TIME, RESID
       
       PRINT *, 'ENTER INITIAL AMOUNT, HALF-LIFE, AND TIME'
       READ *, INIT, HFLIFE, TIME
       RESID = INIT * .5 ** (TIME / HFLIFE)
       PRINT *, 'AMOUNT REMAINING =', RESID
       END