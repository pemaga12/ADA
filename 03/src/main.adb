with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is
   G: Generator;
   --  -- Numero_Al_Azar : Uniformly_Distributed;
   Numero_Al_Azar : Integer;
   Es_Correcto : Boolean := False;
   Numero_Introducido : Integer;
begin
   --  if Es_Correcto then
      --  Reset(G);
      --  for I in 1..10 loop
         --  Numero_Al_Azar := Integer((Random(G) * 100.0) + 1.0);
         --  Put_Line(Numero_Al_Azar'Image);
      --  end loop;
      --  end if;
      -- Generamos el numero
   Numero_Al_Azar := Integer((Random(G) * 100.0) + 1.0);
   Put_Line("Se ha generado el número. Tienes 5 intentos");
   for I in 1..5 loop
      Put_Line("Introduce un numero");
      Numero_Introducido := Integer'Value(Get_Line);
      if (Numero_Introducido > Numero_Al_Azar) then
            Put_Line("El numero que has introducido es mayor");
      elsif (Numero_Introducido < Numero_Al_Azar) then
            Put_Line("El numero que has introducido es menor");
      else
         Put_Line("Acertaste el número!");
         Es_Correcto := True;
         exit when Es_Correcto = True;
      end if;
   end loop;
   Put_Line("El numero era " & Numero_Al_Azar'Image);
   null;
end Main;
