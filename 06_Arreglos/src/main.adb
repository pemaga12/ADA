with Ada.Text_IO; use Ada.Text_IO;
with IO; use IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
   -- Crear un método que muestre las notas del examen
   procedure Mostrar_Notas(Lista : Examenes) is
   begin
      put_line("Has sacado las siguientes notas:");
      for c in Lista_Examenes'range loop
         put_line("Examen"& c'image & ":" & Lista_Examenes(c)'image);
      end loop;
   end;

   function Nota_Alta (Lista: in Lista_Examenes) return Integer is
      Aux : Integer := -1;
   begin
      for Examen of Lista loop
         if(Integer(Examen) > Aux) then
            Aux := Integer(Examen);
         end if;
      end loop;
      return Aux;
   end Nota_Alta;

begin
   --  Insert code here.
   --  declare
   --     type Arreglo_Numeros is array (1..3) of Positive;  -- Declaramos un array de forma explícita
   --
   --     Numeros : Arreglo_Numeros;
   --     -- Mas_Numeros : Arreglo_Numeros := (10, 20, 30, 50); -- Lanza una excepción
   --     Mas_Numeros : Arreglo_Numeros := (10, 20, 30);
   --     Todavia_Mas_Numeros : Arreglo_Numeros := (2 => 100, others => 1);
   --
   --  begin
   --     Numeros(1) := 3;
   --     Numeros(2) := 5;
   --     Numeros(3) := 19;
   --
   --     for n in Numeros'Range loop
   --        Put_Line("La posición" & n'Image & " contiene el valor" & Numeros(n)'Image);
   --     end loop;
   --
   --     Put("Mas numeros (");
   --     for n of Mas_Numeros loop
   --        Put(n'Image);
   --        Put(",");
   --     end loop;
   --     Put(")");
   --     Put_Line("");
   --
   --     Put("Todavia mas numeros (");
   --     for I in Todavia_Mas_Numeros'First..Todavia_Mas_Numeros'Last loop
   --        Put(Todavia_Mas_Numeros(I)'Image);
   --        Put(if (I /= Todavia_Mas_Numeros'Last) then "," else "");
   --     end loop;
   --     Put(")");
   --     Put_Line("");
   --
   --  end;

   -- Declarar un tipo nota que permita guardar las notas de los examenes.
   --  declare
   --     type Nota is new Integer range 1 .. 10;
   --     type Array_Notas is array (1..3) of Nota;
   --
   --     Notas : Array_Notas;
   --
   --
   --  begin
   --     for n in Notas'Range loop
   --        Notas(n) := Nota(Get_Integer(n'Image));
   --     end loop;
   --
   --     for n in Notas'Range loop
   --           Put_Line("En el examen" & n'Image & " el alumno obtuvo" & Notas(n)'Image);
   --     end loop;
   --  end;

   --  declare
   --     type Dias_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     subtype Fin_De_Semana is Dias_Semana range Sabado..Domingo;
   --
   --     Dias_En_Ingles : array (Dias_Semana) of Unbounded_String := (To_Unbounded_String("Monday"),
   --                                                                  To_Unbounded_String("Tuesday"),
   --                                                                  To_Unbounded_String("Wednesday"),
   --                                                                  To_Unbounded_String("Thursday"),
   --                                                                  To_Unbounded_String("Friday"),
   --                                                                  To_Unbounded_String("Saturday"),
   --                                                                  To_Unbounded_String("Sunday"));
   --  begin
   --     Put_Line("Ingrese un dia de la semana");
   --     for Dia in Dias_Semana loop
   --        Put_Line(Dia'Image);
   --     end loop;
   --
   --     declare
   --        Dia: Dias_Semana := Dias_Semana'Value(Get_Line);s
   --     begin
   --        Put_Line(Dia'Image & " en ingles es " & To_String(Dias_En_Ingles(Dia)));
   --     end;
   --  end;


   --Preguntarle uno a uno la nota de los mismos  (y almacenarlo (casteo))
   --  declare
   --     type Nota is new Integer range 1..10;
   --     type Examenes is Array(1..Get_Integer("¿Cuántos examenes has tenido?")) of Nota;
   --     Lista_Examenes : Examenes;
   --  begin
   --     for C in Lista_Examenes'Range loop
   --        Lista_Examenes(C) := Nota(Get_Integer_Between(
   --                                  Integer(Nota'First),
   --                                  Integer(Nota'Last),
   --                                  "¿Qué nota sacaste en el examen" & C'Image & "?"));
   --     end loop;
   --
   --     Put_line("Has sacado las siguientes notas:");
   --     for C in Lista_Examenes'range loop
   --        Put_line("Examen"& C'image & ":" & Lista_Examenes(C)'Image);
   --     end loop;
   --  end;
   --  declare
   --     type Nota is range 1..10;
   --     --type Lista_Notas is array(Positive range <>) of Nota;
   --     type Lista_Notas is array(Positive range <>) of Nota with Default_Component_Value => 10;
   --
   --     Notas : Lista_Notas(1..3);
   --     -- Notas : Lista_Notas (1..3);
   --  begin
   --     for Nota of Notas loop
   --        Put_Line (Nota'Image);
   --     end loop;
   --  end;
   --
   declare
      type Nota is new Integer range 1 .. 10;
      Limite:Integer := Get_Integer("Cuantos examenes has tenido?");
      type Notas is array (Positive range <>) of Nota with Default_Component_Value => 10;
      Lista_Examenes : Notas(1..Limite);
   begin
      for I in Lista_Examenes'Range  loop
         Lista_Examenes(I) := Nota(Get_Integer("Ingresa una nota"));
      end loop;
      Put("Tus notas del curso han sido[");
      for I of Lista_Examenes loop
         if I = Lista_Examenes(Lista_Examenes'Length)  then
            Put(I'Image);
         else
            Put(I'Image & ",");
         end if;
      end loop;
      Put("]");
      Put_Line("");
   end;



   null;
end Main;
