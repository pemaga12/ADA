with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Figura is

   type C_Figura is abstract tagged record
      Nombre: Unbounded_String;
   end record;
   type Figura is access C_Figura'Class;
   
   function Calcular_Area(This: in C_Figura) return float;
   
   -- procedure D;
   
private
   type C_Figura is tagged record
      null;
   end record;
   

end Figura;
