program fabonacci;
uses crt;

VAR
   num, existe : integer;
         salir : char;



   FUNCTION exponente (num:integer):integer;

   var
       residuo : integer;
      potencial: integer;
            sw : integer;
          suma : integer;

   begin
         if sw = 0 then
            begin
                residuo := (num MOD 10);
                sw:=1;
                case residuo of
                     0,2,4,6,8 :
                      begin
                             potencial := 1;
                             repeat
		                begin
			           potencial := potencial * 2;
			           if num > 0 then
			              begin
                                         write(potencial,', ');
			              end;
                                 end;
		              until (potencial >= num);
                              writeln;
                              writeln('si tiene potencia 2');
                       end;
                     else
                      begin
                         writeln('El n£mero ', num,' NO tiene potencia 2');
                     end;
                end;
            end;


          if sw = 1 then
            begin
                potencial:=0;
                residuo := (num MOD 10);
                sw:=0;
                case residuo of
                     0,5 :
                      begin
                             potencial := 1;
                             repeat
		                begin
			           potencial := potencial * 5;
			           if num > 0 then
			              begin
                                          write(potencial,', ');
			              end;
                                 end;
		              until (potencial >= num);
                              writeln;
                              writeln('si tiene potencia 5');
                       end;
                     else
                      begin
                         writeln('El n£mero ', num,' NO tiene potencia 5');
                     end;
                end;
            end;

   end;


begin
   repeat
          begin
             clrscr;
             num:=0;
             existe:=0;
             write('Ingrese el Numero :'); readln(num);
             writeln;
             exponente(num);
             writeln;
             writeln;
             write('¨ Desea ingresar otro N£mero (s/n) ?'); readln(salir);
          end;
  until(salir='n') or (salir='N');

end.
