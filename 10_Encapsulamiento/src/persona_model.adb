package body Persona_Model is

   function Create(Nombre:String; Apellido:String) return Persona is 
      begin
      return new C_Persona'(Nombre => To_Unbounded_String(Nombre), 
                            Apellido => To_Unbounded_String(Apellido),
                           Riqueza => 0.00);
   end Create;
   
   -- gets y sets
   function Get_Nombre(This: C_Persona) return String is
   begin
      return To_String(This.Nombre);
   end;
   
   function Get_Apellido(This: C_Persona) return String is
   begin
      return To_String(This.Apellido);
   end;
   
   function Get_Riqueza(This: C_Persona) return Dinero is 
   begin
      return This.Riqueza;
   end;
   
   procedure Set_Riqueza(This:out C_Persona; Value:Dinero) is
   begin
      This.Riqueza := Value;
   end;
         
   procedure Saludar(This: C_Persona) is
      begin
      Put_Line("Hola, soy " & To_String(This.Nombre) & " " & To_String(This.Apellido));
   end Saludar;
   
      
end Persona_Model;
