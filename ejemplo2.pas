program numeros;
uses crt;

VAR
    num: integer;
 salir, opcion : char;



   FUNCTION buscar (num:integer):integer;
   var
      residuo :integer;
   begin
      residuo := num;

      if residuo MOD 13 = 0 then
         begin
           residuo := residuo DIV 13;
           textcolor(6);writeln ('El n£mero ',num, ' es divisible entre 13 teniendo como resultado ', residuo);
         end;

      residuo := num;
      if residuo MOD 7 = 0 then
         begin
           residuo := residuo DIV 7;
          textcolor(2);writeln ('El n£mero ',num, ' es divisible entre 7 teniendo como resultado ', residuo);

         end;

      residuo := num;
      if residuo MOD 5 = 0 then
         begin
           residuo := residuo DIV 5;
           textcolor(4);writeln ('El n£mero ',num, ' es divisible entre 5 teniendo como resultado ', residuo);
         end;

      residuo := num;
      if residuo MOD 3 = 0 then
         begin
           residuo := residuo DIV 3;
           textcolor(1);writeln ('El n£mero ',num, ' es divisible entre 3 teniendo como resultado ', residuo);
         end;

      residuo := num;
      if residuo MOD 2 = 0 then
         begin
           residuo := residuo DIV 2;
          textcolor(14);writeln ('El n£mero ',num, ' es divisible entre 2 teniendo como resultado ', residuo);
         end;

       residuo := num;
       if (residuo MOD 2 <> 0) and (residuo MOD 3 <> 0) and (residuo MOD 5 <> 0) and (residuo MOD 7 <> 0) and (residuo MOD 13 <> 0) then
         begin
          textcolor(15);writeln ('El n£mero ',num, ' no es divisible en la base de los numeros expuestos ', residuo);
         end;
       end;

begin
   repeat

          ClrScr;
          num:=0;
          writeln('FUNCION QUE CALCULA EL CRITERIO DE DIVISIBILIDAD DE LOS NÈMERO 13,7,5,3,2');
          writeln;
          writeln;
          write('Ingrese el n£mero del criterio de divisibilidad: '); readln(num);
          writeln;
          buscar(num);
          writeln;
          textcolor(15);
          write('® Desea ingresar otro N£mero (s/n) ? '); readln(salir);
   until(salir='n') or (salir='N');

end.
