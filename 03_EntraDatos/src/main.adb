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

   function Try_Convert_Integer
     (Texto:in String;
      Texto_Como_Entero:out Integer)
      return Boolean is
   begin
      Texto_Como_Entero := Integer'Value(Texto);
      return True;
   exception
         --when Constraint_Error => return False;
         when others => return False;
   end;

--     function Get_Integer(Prompt : String := "Ingrese un numero";
--                          Error : String := "no es numero")
--                          return Integer is
--     begin
--        Put_Line(Prompt);
--        loop
--           declare
--              numero: Integer := 0;
--           begin
--              if(Try_Convert_Integer(Get_Line, numero)) then
--                 return numero;
--              end if;
--              Put_Line(Error);
--           end;
--        end loop;
--     end;
--  end Get_Integer;
   function Get_Integer
     (Prompt:String := "Ingresa un numero";
      Error:String := "No ha ingresado un numero, vuelva a intentarlo")
      return Integer is
      Result : Integer := 0;
   begin
      Put_Line(Prompt);
      while (not(Try_Convert_Integer(Get_Line, Result)) loop
             Put_Line(Error);
      end loop;
      return Result;
   end Get_Integer;

             function Get_Integer_Between
               (Min: Integer;
                Max: Integer;
                Prompt : String := "Ingrese un texto numerico.";
                Error  : String := "Ingrese un texto numerico.";
                UnderFlow : String := "Numero muy pequeño, debe ser mayor a: " & Min;
                OverFlow : String := "Numero muy grande, debe ser menor a: " & Max;) return Integer
             is
             begin
             Put_Line (Prompt);
             Pedir_num :
             loop
             declare
             Num : Integer := 0;
             begin
             Num: Get_Integer
             if (Num>Min and Num<Max ) then
             return Num;
             elsif(Num<Min) then
             Put_Line(UnderFlow);
             elsif(Num>Max) then
             Put_Line(OverFlow);
             end if;
             Put_Line
               (Error);
             --Put_Line("Ha Ingresado un valor no numerico, vuelva a intentarlo");
             --podriamos quitar este mensaje hardcodeado colocandolo como parametro.
             end;
             end loop


begin
   --  Insert code here.
   Put_Line("Ingrese su nombre");
   declare
      Nombre : String := Get_Non_Empty_Line;
   begin
      Put_Line("Hola " & Nombre);
      Put_Line("Ingrese su edad");
      declare
         Edad: Integer := 0;
      begin
         if (Try_Convert_Integer(Get_Line, Edad)) then
            Put_Line("Tienes " & Edad'Image);
         else
            Put_Line("No ingresaste un numero");
         end if;
      end;
   end;
end Main;
