with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   function Get_Non_Empty_Line(Prompt: String := "Ingrese un texto no vacio") return String is
   begin
      Put_Line(Prompt);
      loop
         declare
            Texto : String := Get_Line;
         begin
            if(Texto'Length>0) then
               return Texto;
            end if;
            Put_Line("Ha ingresado un texto vacio");
         end;
      end loop;
   end Get_Non_Empty_Line;

begin
   --  Insert code here.
   Put_Line("Ingrese su nombre");
   declare
      Nombre : String := Get_Non_Empty_Line;
   begin
      Put_Line("Hola " & Nombre);
   end;
   null;
end Main;
