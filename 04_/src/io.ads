package io is

   function Get_Non_Empty_Line (Prompt:String := "Ingrese un texto no vacio";    
      Error:String := "Ha Ingresado un texto vacio, vuelva a intentarlo") 
                                return String;
   function Try_Convert_Integer    
     (Texto:in String;  
      Texto_Como_Entero:out Integer) return Boolean;
   
   function Get_Integer     
     (Prompt:String := "Ingresa un numero";    
      Error:String := "No ha ingresado un numero, vuelva a intentarlo") return Integer;

   procedure Reemplazar(Input: in out String; 
                        Caracter_a_reemplazar : in Character; 
                        Caracter_reemplazo : in Character);
   
   function Get_Float     
     (Prompt : String := "Ingrese un texto numerico.";     
      Error : String := "Ingrese un texto numerico.";  
      Separador_Decimales: Character:=',') return Float;
   
   function To_String
     (Input:Float;
      Cantidad_Decimales : Integer := 2;
      Separador_Decimales : Character := ',') return String;
end io;
