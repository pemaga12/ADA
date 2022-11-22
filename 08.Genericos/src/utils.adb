package body utils is

   procedure Swap(Left, Right: in out T) is
      Aux : T := Left;
   begin
      Left := Right;
      Right := Aux;
   end;
   
   generic type T is private;
      with function To_String(Value:T)return String;
   procedure Show_Vertical(Value:T);
   
   
end utils;
