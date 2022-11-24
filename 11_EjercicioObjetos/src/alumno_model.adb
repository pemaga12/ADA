package body Alumno_Model is

   function Create(Nombre: String) return Alumno is
   begin
      return new C_Alumno'(C_Persona with  Nombre => To_Unbounded_String(Nombre), Notas => Empty);
   end;
   
   
   function Get_Nombre (This: out C_Alumno) return String is
   begin
      return To_String(This.Nombre);
   end;
   
   procedure Rendir_Examen(This: out C_Alumno; Examen: Nota) is
   begin
      this.Notas.Append(Examen);
   end;
   
   function Calcular_Promedio(This: out C_Alumno) return Float is
   Suma : Integer := 0;
   begin
 
      for Valor of This.Notas loop
         Suma := Integer(Valor) + Suma;
      end loop;
      return Float(Suma) / Float(Length(This.Notas));
   end;
   
   


end Alumno_Model;
