with Alumno_Model; use Alumno_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   -- Notas_Alumno : Integer_Array_Notas;
   Alumno1 : Alumno := Create("Pedro");

begin
   --  Insert code here.
   Put_Line(Alumno1.Get_Nombre);
   null;
end Main;
