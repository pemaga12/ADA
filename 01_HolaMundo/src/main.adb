with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is
   --  Aux : string := "test";
   Numero : Integer := 10;          -- Inicialización de variable al declarar
begin
   --  Insert code here
   --  Put_Line("Hola mundo");
   --  Put_Line(Aux);
   --  Numero := 10;                -- Asignación de variable
   --  Put_Line("La variable Numero tiene el valor" & Numero'Image);

   --  declare
   --     Numero2 : Integer := 11;          -- Inicialización de variable al declarar
   --  begin
   --     Put_Line("La variable Numero2 tiene el valor" & Numero'Image);
   --  end
   --  -- La variable numero 2 no existe fuera del begin end del declare

   --  declare
   --     Nombre : String (1..10);      --Inicializando el tamaño (explícita).
   --     -- Nombre : String := "Pedro";   --Inicializando con un valor (implícita)
   --  begin
   --     -- Nombre := "Pedro";            --Da error ya que el string tiene tamaño 10
   --     Put_Line("El nombre tiene" & Nombre'Length'Image & " caracteres");
   --  end;

   --  Put_Line("Ingrese su nombre");
   --  declare
   --     Nombre : String := Get_Line;
   --  begin
   --     if (Nombre'Length > 0) then
   --        Put_Line("Hola " & Nombre);
   --     else
   --        Put_Line("Pon tu nombre, no?");
   --     end if;
   --  end;

   Put_Line("Ingrese su nombre");
   declare
      Nombre : String := Get_Line;
   begin
      Put_Line("Te llamas " & (if(Nombre'Length > 0) then Nombre else "no me lo has dicho"));
   end;
   null;
end Main;
