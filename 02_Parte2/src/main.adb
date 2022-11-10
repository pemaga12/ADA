with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed;                  -- No le pongo el use a posta

procedure Main is

--     procedure Put_Nice_Line
--          (Texto:in String;
--          Subrayado : Character := '*') is
--        use Ada.strings.Fixed;
--     begin
--        Put_Line(Texto);
--        Put_Line(Texto'Length * Subrayado);
--     end;
--
--  begin
--     --  Insert code here.
--     --  Put_Nice_Line("Hola subprogramas!");
--     --  Put_Nice_Line("Hola subprogramas!", '-');
--     Put_Nice_Line(Texto => "Hola subprogramas!", Subrayado => '-');

   --  --Subprograma que invierte un string
   --  procedure Put_Reverse_Line(Texto:String) is
   --     begin
   --     for i of reverse Texto loop
   --        Put(i);
   --     end loop;
   --
   --  end;
   --  begin
   --     Put_Reverse_Line("Hola");
   --  null;

   -- Reemplaza i:1, a:4, e:3, s:5, o:0
   -- Los reemplazos son configurables
   -- Hola: h0l4
   --  procedure Put_Hacker_Line
   --    (Texto:in String; a:String := "4";
   --     e:String := "3"; i:String := "1";
   --     o:String := "0"; s:String := "5")is
   --     use Ada.Strings.Fixed;
   --  begin
   --     for C of Texto loop
   --        case C is
   --        when 'i' => Put(i);
   --        when 'a' => Put(a);
   --        when 'e' => Put(e);
   --        when 's' => Put(s);
   --        when 'o' => Put(o);
   --        when others => Put(C);
   --        end case;
   --     end loop;
   --  end;

   function Area_Rectángulo(LadoMayor:Float; LadoMenor:Float) return Float is
   begin
      return LadoMayor * LadoMenor;
   end;

      begin
      declare
         Area : Float;
      begin
         Area:= Area_rectangulo(2.0,4.0);
         -- Put(Area, Exp => 0, Aft => 2);
      end;
   end;
   null;
end Main;
