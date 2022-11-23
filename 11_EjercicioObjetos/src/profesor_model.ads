with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;

package Profesor_Model is

   --type Cursos_Dictados is new Integer range 1..10;
   -- Declaracion del array
   --package Integer_Array_Cursos is new Ada.Containers.Vectors(Element_Type => Cursos_Dictados, Index_Type => Positive);
   --use Integer_Array_Cursos;
   
   type C_Profesor is tagged private;
   type Profesor is access C_Profesor'Class;
   
   --Constructor de la clase.
   function Create(Nombre: String) return Profesor;
   --Getter y Setter
   function Get_Nombre (This: in C_Profesor) return String;
   function Get_Curso (This: in C_Profesor) return Integer;
   

   procedure Add_Curso(This: out C_Profesor; Cursos: Integer);
   
   -- function Calcular_Promedio(This: out C_Profesor) return Float;
   
   procedure Aumentar_Curso(This: out C_Profesor);
   
private
   type C_Profesor is tagged record
      Nombre: Unbounded_String;
      Cursos: Integer;
   end record;
   



end Profesor_Model;
