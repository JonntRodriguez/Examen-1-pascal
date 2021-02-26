program fabonacci;
uses crt;

VAR
   num, existe : integer;
         salir : char;



   FUNCTION numfibonacci (num:integer):integer;

   var

   valor1:integer;
   valor2:integer;
   suma:integer;
   control:integer;

   begin
       valor1:=-1;
       valor2:=1;
         suma:=0;
      control:=0;
      while(control < num) do
        begin
               suma := valor1 + valor2;
             valor1 := valor2;
             valor2 := suma;

             writeLn (suma);
             if (num = suma) then
                 existe := 1;

             control:=control + 1;

        end;

        if existe = 0 then
            writeln ('El n£mero NO es Fibonacci : ')
        else
            writeln ('El n£mero SI es Fibonacci : ');

   end;


begin
   repeat
          num:=0;
          existe:=0;

          write('Ingrese el Numero :'); readln(num);
          writeln;
          numfibonacci(num);
          writeln;
          writeln;
          write('¨ Desea ingresar otro N£mero (s/n) ?'); readln(salir);
   until(salir='n') or (salir='N');

end.
