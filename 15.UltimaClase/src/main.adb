with Modelo; use Modelo;
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is

begin
   --  declare
   --     -- Un_Animal : Clase_Animal;
   --     -- No me deja hacerlo porque Clase_Animal es abstract.
   --     -- Todo esto va al stack
   --
   --     Turuleca : Clase_Gallina; -- Instancio una gallina en el heap
   --
   --     La_De_Los_Huevos_De_Oro: Clase_Gallina := Turuleca;
   --
   --     Rango : Clase_Iguana;
   --  begin
   --     Put_Line(Turuleca.To_String);
   --     Put_Line(Rango.To_String);
   --     declare
   --        Un_Animal : Clase_Animal'Class := Turuleca; -- Copio a Turuleca
   --     begin
   --        Put_Line(Un_Animal.To_String);
   --     end;
   --  end;
   declare
      Turuleca := Access_Animal := new Clase_Gallina;
      Rango := Access_Animal := new Clase_Iguana;
      Animal := Access_Animal := Rango;
   begin
      Put_Line(Turuleca.To_String);
      Put_Line(Rango.To_String);
      Put_Line(Animal.To_String);
   end;

   --  Insert code here.
   null;
end Main;
