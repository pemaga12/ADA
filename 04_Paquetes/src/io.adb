package body io is

   function Get_Non_Empty_Line    
     (Prompt:String := "Ingrese un texto no vacio";    
      Error:String := "Ha Ingresado un texto vacio, vuelva a intentarlo") 
      return String is  
   begin     
      Put_Line(Prompt);  
      Lectura_Datos : loop      
         declare        
            Texto : String := Get_Line;    
         begin        
            if (Texto'Length>0) then   
               return Texto;        
            end if;          
            Put_Line(Error);  
         end;  
      end loop Lectura_Datos; 
   end Get_Non_Empty_Line;
   
   function Try_Convert_Integer    
     (Texto:in String;  
      Texto_Como_Entero:out Integer) return Boolean is  
   begin     
      Texto_Como_Entero := Integer'Value(Texto);    
      return True;  
   exception    
         --when Constraint_Error => return False;   
      when others => return False;  
   end;
   
   function Get_Integer     
     (Prompt:String := "Ingresa un numero";    
      Error:String := "No ha ingresado un numero, vuelva a intentarlo") return Integer is    
      Result : Integer := 0; 
   begin     
      Put_Line(Prompt);  
      while (not(Try_Convert_Integer(Get_Line, Result))) loop   
         Put_Line(Error);    
      end loop;    
      return Result; 
   end Get_Integer;
   
   procedure Reemplazar(Input: in out String; 
                        CaracterInicial: in Character; 
                        CaracterFinal: in Character) is      
      Input : String := Get_Line;   
   begin      
      for I in Input'Range loop         
         if (Input(I) = ',') then   
            Input(I) := '.';        
         end if;     
      end loop;   
   end;
   
   function Get_Float     
     (Prompt : String := "Ingrese un texto numerico.";     
      Error : String := "Ingrese un texto numerico.";  
      Separador_Decimales: Character:=',') return Float   is    
      Texto: String:=Get_Line;   
   begin    
      Put_Line (Prompt);  
      Pedir_num :  
      loop      
         declare    
            Num : Float := 0.0;  
         begin       
            Reemplazar(Texto,Separador_Decimales,'.');        
            if (Try_Convert_Float (Texto, Num)) then     
               return Num;      
            end if;        
            Put_Line (Error);   
         end;    
      end loop Pedir_num;
   end Get_Float;
   
   function To_String      
     (Input:Float;     
      Cantidad_Decimales : Integer := 2;    
      Separador_Decimales : Character := ',') return String is   
      Result :String := Integer(Float'Floor(Input))'Image    
        & Separador_Decimales    
        & Integer((Input - Float'Floor(Input)) * Float(10 ** Cantidad_Decimales))'Image ;  
   begin    
      return result;  
   end To_String;
end io;
