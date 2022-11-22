with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with P_Persona; use P_Persona;

procedure Main is

begin
   declare




      type C_Heroe is tagged record
         Nombre: Unbounded_String;
         Fuerza: Integer;
         Hp : Integer;
      end record;
      type Heroe is access C_Heroe'Class;

      Una_Persona : C_Persona := null;
   begin
      Una_Persona := new C_Persona'(Nombre => To_Unbounded_String("Pedro"),
                                    Apellido => To_Unbounded_String("Martinez"));
      Saludar(Una_Persona);
   end;

   null;
end Main;
