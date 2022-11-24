package Modelo is

   type Clase_Animal is abstract tagged null record;
   function To_String(This :Clase_Animal) return String is abstract;
   
   type Access_Animal is all access Clase_Animal'Class;              -- Puede apuntar a la clase animal o a una de sus subclases
   
   type Clase_Iguana is new Clase_Animal with null record;
   overriding function To_String(This : Clase_Iguana) return String;  -- Una primitiva de la clase iguana
   
   type Clase_Gallina is new Clase_Animal with null record;
   overriding function To_String(This : Clase_Gallina) return String;
     
   procedure Temp;

end Modelo;
