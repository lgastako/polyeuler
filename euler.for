C Project Euler in Fortran
C John Evans <john@jpevans.com>

       PROGRAM EULER
           PRINT*, EULER1()
           STOP
       END


C Euler #1
C Answer: 233168
C
C If we list all the natural numbers below 10 that are multiples of 3 or 5,
C we get 3, 5, 6 and 9. The sum of these multiples is 23.
C
C Find the sum of all the multiples of 3 or 5 below 1000.

       FUNCTION EULER1 ()
           EULER1 = 0

           DO I = 3, 999
              IF (MODULO(I, 3) .EQ. 0 .OR. MODULO(I, 5) .EQ. 0) THEN
                  EULER1 = EULER1  + I
              END IF
           END DO
           RETURN
       END FUNCTION EULER1

