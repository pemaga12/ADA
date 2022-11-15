package body figuras is

   function "*"(Left:in Distancia; Right: in Distancia) return Area is --sobrecarga de operadores
   begin
       return Area(Float(Left) * Float(Right));
   end "*";
   
   function Calcular_Area_Triangulo(Base:Distancia; Altura: Distancia) return Area is
   begin
      return (Base * Altura / 2.0);
   end Calcular_Area_Triangulo;
   

end figuras;
