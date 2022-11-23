with Figura; use Figura;

package Triangulo_Model is

   type Lado is new Float;
   type C_Triangulo is new C_Figura with private;
   type Triangulo is access C_Triangulo'Class;
   --Constructor de la clase.
   function Create (Base : Lado; Altura : Lado) return Triangulo;
   overriding function Calcular_Area(This: in C_Triangulo) return float;
   procedure D;
   
private
   type C_Triangulo is new C_Figura with record
      Base : Lado;
      Altura : Lado;
   end record;
   
end Triangulo_Model;
