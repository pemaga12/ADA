with io; use io;

procedure Main is

begin
   declare
      Nombre: String:= Get_Non_Empty_Line("Como te llamas?");
      Edad: Integer := Get_Integer("Que edad tienes?");
      Altura: Float;
   --  Insert code here.
   begin
      Put_Line("Hola " & Nombre);
      Put_Line("¿Cuanto mides?");
      Get(Altura);
      Put_Line(Edad);
   end;
   null;
end Main;
