package body Triangulo_Model is

   function Create (Base : Lado; Altura : Lado) return Triangulo is
   begin
      return new C_Triangulo'(C_Figura with Base => Base, Altura => Altura);
   end Create;
   
   procedure D is
   begin
      null;
   end;
   
   
   function Calcular_Area (This: in C_Triangulo) return Float is
   begin
      return Float(This.Base * This.Altura) / 2.0;
   end Calcular_Area;

end Triangulo_Model;
