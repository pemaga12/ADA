
package body P_Persona is

   procedure Saludar (This: C_Persona) is
      begin
         Put_Line("Hola, soy " &
                    To_String(This.Nombre) &
                    " " &
                    This.Apellido);
   end Saludar;

end P_Persona;
