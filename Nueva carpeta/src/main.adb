with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed;                  -- No le pongo el use a posta

procedure Main is
   procedure Intercambiar(A: in out Integer;
                          B: in out Integer) is
      Aux : Integer := A;
   begin
      A:=B;
      B:=Aux;
   end;
begin
   --Intercambiar el valor de dos variables
   declare
      Primero : Integer := 10;
      Segundo : Integer := 20;
   begin
      Put_Line("Antes Intercambiar:" & Primero'Image & " " & Segundo'Image);
      Intercambiar(Primero, Segundo);
      Put_Line("Despues Intercambiar:" & Primero'Image & " " & Segundo'Image);
   end;
   null;

end Main;
