with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Persona_Model is
   
   type C_Persona is abstract tagged record
      Nombre: Unbounded_String;
   end record;

   --type C_Persona is tagged private;
   type Persona is access C_Persona'Class;
   
   --Como la clase C_Persona es abstracta no tenemos constructor
   
   procedure D;
   
private
   --  type C_Persona is tagged record
   --     Nombre: Unbounded_String;
   --  end record;
   
end Persona_Model;
