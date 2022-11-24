package body Profesor_Model is

   function Create (Nombre : String) return Profesor is
   begin
      return
        new C_Profesor'(Nombre => To_Unbounded_String (Nombre), Cursos => 0);
   end Create;

   function Get_Nombre (This : in C_Profesor) return String is
   begin
      return To_String (This.Nombre);
   end Get_Nombre;

   function Get_Curso (This : in C_Profesor) return Integer is
   begin
      return This.Cursos;
   end Get_Curso;

   procedure Add_Curso (This : out C_Profesor; Cursos : Integer) is
   begin
      This.Cursos := Cursos;
   end Add_Curso;

   procedure Aumentar_Curso (This : out C_Profesor) is
   begin
      This.Cursos := This.Cursos + 1;
   end Aumentar_Curso;

   --  function Calcular_Promedio(This: out C_Profesor) return Float is
   --  Suma : Integer := 0;
   --  begin
   --
   --     for Valor of This.Notas loop
   --        Suma := Integer(Valor) + Suma;
   --     end loop;
   --     return Float(Suma) / Float(Length(This.Notas));
   --  end;

end Profesor_Model;
