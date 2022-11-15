with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   function Suma_Dos_Numeros
     (Primero : in Integer; Segundo : in Integer) return Integer is
   begin
      return Primero + Segundo;
   end;
   -- Sobrecarga
   function Suma_Dos_Numeros
     (Primero : in Float; Segundo : in Float) return Float is
   begin
      return Primero + Segundo;
   end;

   function "+"
     (Primero : in Float; Segundo : in Integer) return Float is
   begin
      return Primero + Float(Segundo);
   end;

   procedure PrintF(Item: String) renames Put_Line;

begin
   declare
      A: Integer := 3;
      B: Integer:= 2;
      Res: Integer;
      FA: Float:= 7.0;
      FB: Float:= 8.0;
      FRes: Float;
   begin
      Res := Suma_Dos_Numeros(A, B);
      PrintF("La suma de A y B es" & Res'Image);

      -- Sobrecarga de funciones
      FRes := Suma_Dos_Numeros(FA, FB);
      PrintF("La suma de A y B es" & FRes'Image);
      Put(FA,Exp => 0);
      Put(" + ");
      Put(FB,Exp => 0);
      Put(" = ");
      Put(FRes, Exp => 0);
      Put("");
      FRes := FA + A;
      Put_Line("");
      Put(FRes, Exp => 0);
      end;
   null;
end Main;
