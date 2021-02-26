program fabonacci;
uses crt;

const N = 4;

type
    vector = array [1 ..N] of integer;

VAR
  numero : vector;

  num, i : integer;

   salir : char;



   FUNCTION numeromayor():integer;

   var
    x,sw : integer;
    mayor: integer;
    menor: integer;

   begin
     mayor := 0;
     menor := 0;
        sw := 0;
     for  x:=1 to n do
      begin

          if mayor < numero[x] then
            begin
                mayor := numero[x];

                if sw = 0 then
                   begin
                     menor := numero[x];
                     sw := 1;
                   end;
            end;

          if menor > numero[x] then
            begin
                menor := numero[x];
            end;

      end;
        write ('El N£mero m s Alto insertado es: ',mayor);
        writeln;
        write ('El N£mero m s Bajo insertado es: ',menor);

   end;



begin
   repeat
          num:=0;
          i:=0;
          clrscr;
          writeln ('Funci¢n que permite buscar el N£mero m s Alto y el N£mero m s Bajo');
          writeln;
          writeln;
          writeln;
          for i:=1 to N do
           begin
           write('Ingrese el Numero ',i,' :'); readln(num);
            numero[i] := num;
           end;
           writeln;
           numeromayor();
           writeln;
           writeln;
           write('¨ Desea ingresar otro N£mero (s/n) ?'); readln(salir);
   until(salir='n') or (salir='N');
end.
