with Persona_Model; use Persona_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   --Pedro : Persona := new C_Persona'(Nombre => To_Unbounded_String("Pedro"));
   Pedro : Persona := Create("Pedro", "Martínez");
begin
   --  Insert code here.
   --  Pedro.Nombre := To_Unbounded_String("Pedro 2"); -- Está feo, mejor usar get, set

   Pedro.Saludar;
   Pedro.Set_Riqueza(1000.00);
   Put_Line(if Pedro.Get_Riqueza > Dinero(10000.00) then "Sos rico" else "Sos repobre");
   null;
end Main;
