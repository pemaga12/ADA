package figuras is

   type Distancia is new Float;

   type Area is new Float;
   
   function "*"(Left:in Distancia; Right: in Distancia) return Area;
   
   function Calcular_Area_Triangulo(Base:Distancia; Altura: Distancia) return Area;

end figuras;
