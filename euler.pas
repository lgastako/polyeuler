(* Project Euler in pascal (specifically targeting the GNU pascal compiler) 

To compile:
% gpc euler.pas -o euler

*)

program euler;

    (* Euler #1
       Answer: 233168

       If we list all the natural numbers below 10 that are multiples of 3 or 5,
       we get 3, 5, 6 and 9. The sum of these multiples is 23.

       Find the sum of all the multiples of 3 or 5 below 1000.
    *)
    function euler1 : integer;
    var n : integer;
    var i : integer;
    begin
        n := 0;
        for i := 1 to 999 do
        begin
            if (i mod 3 = 0) or (i mod 5 = 0) then
            begin
                n := n + i;
            end;
        end;
        euler1 := n;
    end;

begin
    writeln(euler1());
end.
