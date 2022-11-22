package Calendario is

   type Dias_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   type Meses is (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre,Diciembre);
   type Estaciones is (Primavera, Verano, Oto�o, Invierno);
   
   --procedure Mostrar_Dias();
   --procedure Mostrar_Meses();
   
   type Dias_Del_Mes is new Integer range 1..31;
   type A�os is new Integer range 1900..2100;
   
   --  type Fecha is record
   --     Dia : Dia_Del_Mes;
   --     Mes : Meses;
   --     A�o : A�os;
   --  end record;
   --  
   --function To_String(Date:Fecha) return String;
      
end Calendario;
