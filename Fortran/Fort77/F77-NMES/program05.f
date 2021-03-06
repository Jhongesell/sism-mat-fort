       PROGRAM DILUTE
       INTEGER NCASTS
       REAL ACID, WATER, CONCEN, LIMIT

       PRINT *, 'ENTER ORIGINAL AMOUNT OF ACID, AMOUNT OF WATER ADDED'
       PRINT *, 'AND THE NUMBER OF CASTINGS'
       READ *, ACID, WATER, NCASTS
       CONCEN = (ACID / (ACID + WATER)) ** NCASTS
       PRINT *, 'THE PROPORTION OF ACID IN THE MIXTURE AFTER'
       PRINT *, NCASTS, ' IMMERSIONS IS ', CONCEN
       PRINT *, 'NOW ENTER THE LOWER LIMIT ON THE ACIDITY'
       READ *, LIMIT
       NCASTS = 1 + INT(LOG(LIMIT) / (LOG(ACID) - LOG(ACID + WATER)))
       PRINT *, NCASTS, ' CASTINGS CAN BE IMMERSED BEFORE THE ACIDITY'
       PRINT *, 'FALLS BELOW THIS LIMIT'
       END
