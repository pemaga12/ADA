with Ada.Text_IO; use Ada.Text_IO;3

package body Calendario is

   procedure Mostrar_Dias() is
      for Dia in Dias_Semana loop
         Put_Line("Hoy es " & Dia'Image);
         case Dia is
            when Lunes =>
               Put_Line("Feliz comienzo de semana");
            when Sabado..Domingo =>
               Put_Line("Feliz fin de semana");
            when Martes..Jueves =>
               Put_Line("A tope en la semana");
            when Viernes =>
              Put_Line("El cuerpo lo sabe");
         end case;
      end loop;
   end;
   
   procedure Mostrar_Meses() is
      for Mes in Meses loop
         Put_Line("Hoy es " & Mes'Image);
         case Mes is
           when Marzo..Junio =>
              Put_Line("Es " & Primavera'Image);
           when Julio..Septiembre =>
              Put_Line("Es " & Verano'Image);
           when Octubre..Diciembre =>
              Put_Line("Es " & Otoño'Image);
           when Enero..Febrero =>
              Put_Line("Es " & Invierno'Image);
         end case;
      end loop;
   end;
   
   function To_String(Date:Fecha) return String is
   begin
      return Date.Dia'Image & "/" & Date.Mes'Image & "/" & Date.Año'Image;
   end;
   

end Calendario;
