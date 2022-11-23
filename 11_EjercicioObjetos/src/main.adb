with Alumno_Model; use Alumno_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Aula;
with Profesor_Model; use Profesor_Model;
with Persona_Model; use Persona_Model;

procedure Main is
   -- Notas_Alumno : Integer_Array_Notas;
   Alumno1 : Alumno := Create("Pedro");

   Profesor1 : Profesor := Create("Manolo");

   P : Persona := new C_Persona'(Nombre => To_Unbounded_String("Demo"));

   procedure Show_Alumno(A : Alumno) is
   begin
      Put_Line(A.Get_Nombre);
   end;
   package Curso_Ada is new Aula(Tipo_Integrantes => Alumno,
                                Mostrar_Integrante => Show_Alumno);

begin
   --  Insert code here.
   Put_Line(Alumno1.Get_Nombre);
   Alumno1.Rendir_Examen(5);
   Alumno1.Rendir_Examen(9);
   Alumno1.Rendir_Examen(7);
   Alumno1.Rendir_Examen(6);
   Alumno1.Rendir_Examen(5);
   Put_Line(Alumno1.Calcular_Promedio'Image);

   Curso_Ada.Asistentes.Append(Alumno1);
   Curso_Ada.Mostrar_Asistentes;

   Put_Line(Profesor1.Get_Nombre);
   Profesor1.Add_Curso(2);
   Put_Line(Profesor1.Get_Curso'Image);
   Profesor1.Aumentar_Curso;
   Put_Line(Profesor1.Get_Curso'Image);

   null;
end Main;
