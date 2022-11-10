with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

begin
   --  declare
   --     Default_Mayoria_Edad :constant Integer := 18;
   --     Default_Edad_Jubilacion :constant Integer := 65;
   --     Edad : Integer := 19;
   --  begin
   --     Put_Line("Ingrese su edad");
   --     -- Edad : Get_Line;
   --     Get(Edad);
   --     Put_Line("Su edad es" & Edad'Image);
   --     if (Edad in Default_Edad_Jubilacion..100) then           -- Rangos
   --        Put_Line("Eres una persona mayor");
   --     elsif (Edad >= Default_Mayoria_Edad) then
   --        Put_Line("Eres mayor de edad");
   --     end if;
   --  end;

   -- Pedirle al usuario un número y decir si es par o impar
   --  declare
   --     Numero : Integer;
   --  begin
   --     Put_Line("Introduce un numero");
   --     Get(Numero);
   --     if(Numero mod 2 = 0) then
   --        Put_Line("El numero es par");
   --     else
   --        Put_Line("El numero no es par");
   --     end if;
   --  end;

   --  declare
   --  begin
   --     Put_Line("Vamos a contar hasta 10");
   --     for i in 1..10 loop
   --        Put_Line(i'Image);
   --     end loop;
   --     Put_Line("Ahora para atras");
   --     for i in reverse 1..10 loop
   --        Put_Line(i'Image);
   --     end loop;
   --  end;
   --

   --  declare
   --     Numero : Integer;
   --  begin
   --     Put_Line("Cuantas veces quieres que te salude?");
   --     Get(Numero);
   --     -- Numero := Integer'Value(Get_Line);
   --     for i in 1..Numero loop
   --        Put_Line("Hola guapo");
   --     end loop;
   --
   --     end;

   --  declare
   --     N : Integer;
   --  begin
   --     Put_Line("Ingrese un número");
   --     Get(N);
   --     while N>0 loop
   --        N := N / 2;
   --        Put_Line("Dividido 2 es" & N'Image);
   --     end loop;
   --  end;
   --

   --Preguntar al usuario un numero
   --Hasta que el usuario ingrese un 0
   --con un while
   --Mostrar la sumatoria de numeros
   --  declare
   --     N : Integer;
   --     suma : Integer := 0;
   --  begin
   --     Get(N);
   --     while N /= 0 loop
   --        suma := suma + N;
   --        Put_Line("La suma es:" & suma'Image);
   --        Get(N);
   --     end loop;
   --     Put_Line("La suma final es:" & suma'Image);
   --     end;

   --Preguntar al usuario y saludarlo hasta que se ingrese un string vacio
   --  declare
   --     Nombre:String:="";
   --  begin
   --     loop
   --        Put_Line("Di tu nombre");
   --        declare
   --           Nombre:String:=Get_Line;
   --        begin
   --           exit when (Nombre="");
   --           Put_Line("Hola " & Nombre);
   --        end;
   --     end loop;
   --  end;
   null;
end Main;
