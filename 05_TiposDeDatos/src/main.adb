with Ada.Text_IO; use Ada.Text_IO;
with figuras; use figuras;
with Calendario use Calendario;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is
   -- type Distancia is new Float;
   --  A: Float := 1.3;
   --  B: Distancia := 5.6;
   -- type Area is new Float;
   -- type Nota is new Integer range 1..10; -- Tipo de dato restringido
   -- type Numero_Muy_Largo is range 1..2**56;
   -- type Angulo is new Float range 0.0..360.0;
   -- type Angulo is mod 360; --Los tipos de datos modular solo funcionan para enteros


   Base : Distancia := 10.0;
   Altura : Distancia := 15.0;
   Area_Triangulo : Area;

   --  Nota_Examen : Nota;
   --  N: Numero_Muy_Largo;
   --  Giro : Angulo := 180;

   -- Hoy_Es : Dias_Semana;
begin
   --  Insert code here.

   -- Area_Triangulo := Area(Base * Altura / 2.0);
   -- Area_Triangulo := Calcular_Area_Triangulo(Base, Altura);
   -- Put_Line(Area_Triangulo'Image);
   -- Nota_Examen := 10;
   -- Nota_Examen := Nota_Examen + 3; -- Dará una excepcion
   -- Put_Line(Nota'Size'Image);
   -- Giro := Giro + 185;

   --Hoy_Es := Martes;
   --Put_Line(Hoy_Es'Image);
   --Put_Line(Dias_Semana'Succ(Hoy_Es)'Image);
   --  for Mes in Meses loop
   --     Put_Line("Hoy es " & Mes'Image);
   --     case Mes is
   --        when Marzo..Junio =>
   --           Put_Line("Es " & Primavera'Image);
   --        when Julio..Septiembre =>
   --           Put_Line("Es " & Verano'Image);
   --        when Octubre..Diciembre =>
   --           Put_Line("Es " & Otoño'Image);
   --        when Enero..Febrero =>
   --           Put_Line("Es " & Invierno'Image);
   --     end case;
   --  end loop;

   --  for Mes in Meses loop
   --     Put_Line("Hoy es " & Mes'Image);
   --     case Dia is
   --     when Enero =>
   --        Put_Line("Feliz comienzo de semana");
   --     when Sabado..Domingo =>
   --        Put_Line("Feliz fin de semana");
   --     when Martes..Jueves =>
   --        Put_Line("A tope en la semana");
   --     when Viernes =>
   --        Put_Line("El cuerpo lo sabe");
   --     end case;
   --  end loop;

   -- Crear el paquete calendario y mover al paquete los tipos de datos relacionados

   null;
end Main;
