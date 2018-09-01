module code(

    input clk,
    input l,
    input r,
    inout u,
    input d,
         output reg i1,
         output reg i2,
         output reg i3,
         output reg i4,
         output reg i5,
         output [3:0] led1

    );
    
    
    
reg [31:0]h;
                reg clock;
                
                initial
                begin
                clock = 1'b0;
                h = 32'b0;
                end
                
                always@(posedge clk)
                begin
                
                if(h > 1250)
                begin
                clock = ~clock;
                h = 32'b0;
                end
                
                else
                h <= h + 1;
                
                end    
                
                


reg [4:0] led;
reg [3:0] v;
reg [31:0] count;


reg s;
reg [4:0] t;

initial
begin
led = 1;
v = 4'b0100;
count = 0;
s = 0;
t = 15;


end

always @(posedge l,posedge r,posedge u,posedge d,posedge clock)
begin //begin of always


if(l == 1)
begin //begin of l == 1 

if(v == 4'b0100)
v <= v;

else
v <= 4'b1000;

end //end of l == 1

else if(r == 1)
begin //begin of r == 1 

if(v == 4'b1000)
v <= v;

else
v <= 4'b0100;

end //end of r == 1

else if(u == 1)
begin //begin of u == 1 

if(v == 4'b0001)
v <= v;

else
v <= 4'b0010;

end //end of u == 1

else if(d == 1)
begin //begin of d == 1 

if(v == 4'b0010)
v <= v;

else
v <= 4'b0001;

end //end of d == 1

else
begin //begin of clock
if(led == 1) //(1,2)
begin //begin of led == 1


if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t


else 
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;

if(v == 4'b0001)
led <= 5;

else if(v == 4'b0010)
led <= 17;


else if(v == 4'b0100)
led <= 2;

else if(v == 4'b1000)
led <= 4;




end //end of count == 12500
 
else
begin //begin of else
if(s == 0)
begin
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else



end //end of else
end //end of else of led == t

end //end of led == 1


else if(led == 2) //(2,1)
begin //begin of led == 2

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 6;

else if(v == 4'b0010)
led <= 18;


else if(v == 4'b0100)
led <= 3;

else if(v == 4'b1000)
led <= 1;




end //end of count == 12500
 
else
begin //begin of else
if(s == 0)
begin
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else
end //end of else

end // end of else of led == t
end //end of led == 2


else if(led == 3) //(3,4)
begin //begin of led == 1

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 7;

else if(v == 4'b0010)
led <= 19;


else if(v == 4'b0100)
led <= 4;

else if(v == 4'b1000)
led <= 2;




end //end of count == 12500
 
else
begin //begin of else
if(s == 0)
begin
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else

end //end of else of led == t
end //end of led == 3


else if(led == 4) //(4,3)
begin //begin of led == 4

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t


else 
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;

if(v == 4'b0001)
led <= 8;

else if(v == 4'b0010)
led <= 20;


else if(v == 4'b0100)
led <= 1;

else if(v == 4'b1000)
led <= 3;




end //end of count == 12500
 
else
begin //begin of else
if(s == 0)
begin
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else


end //end of else
end // end of else of led == t
end //end of led == 4


else if(led == 5) //(1,3)
begin //begin of led == 5

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 9;

else if(v == 4'b0010)
led <= 1;


else if(v == 4'b0100)
led <= 6;

else if(v == 4'b1000)
led <= 8;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end
else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 5


else if(led == 6) //(3,1)
begin //begin of led == 6

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 10;

else if(v == 4'b0010)
led <= 2;


else if(v == 4'b0100)
led <= 7;

else if(v == 4'b1000)
led <= 5;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end // end of else of led == t
end //end of led == 6


else if(led == 7) //(2,4)
begin //begin of led == 7

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 11;

else if(v == 4'b0010)
led <= 3;


else if(v == 4'b0100)
led <= 8;

else if(v == 4'b1000)
led <= 6;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 7


else if(led == 8) //(4,2)
begin //begin of led == 8

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 12;

else if(v == 4'b0010)
led <= 4;


else if(v == 4'b0100)
led <= 5;

else if(v == 4'b1000)
led <= 7;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end // end of else of led == t
end //end of led == 8

else if(led == 9) //(1,4)
begin //begin of led == 9

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 13;

else if(v == 4'b0010)
led <= 5;


else if(v == 4'b0100)
led <= 10;

else if(v == 4'b1000)
led <= 12;




end //end of count == 12500
 
else
begin //begin of else
if(s == 0)
begin
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else


end //end of else
end //end of else of led == t
end //end of led == 9


else if(led == 10) //(4,1)
begin //begin of led == 10

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 14;

else if(v == 4'b0010)
led <= 6;


else if(v == 4'b0100)
led <= 11;

else if(v == 4'b1000)
led <= 9;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 10


else if(led == 11) //(3,2)
begin //begin of led == 11

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 15;

else if(v == 4'b0010)
led <= 7;


else if(v == 4'b0100)
led <= 12;

else if(v == 4'b1000)
led <= 10;


end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else


end //end of else
end //end of else of led == t
end //end of led == 11


else if(led == 12) //(2,3)
begin //begin of led == 12

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 16;

else if(v == 4'b0010)
led <= 8;


else if(v == 4'b0100)
led <= 9;

else if(v == 4'b1000)
led <= 11;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 12


else if(led == 13) //(1,5)
begin //begin of led == 13

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 17;

else if(v == 4'b0010)
led <= 9;


else if(v == 4'b0100)
led <= 14;

else if(v == 4'b1000)
led <= 16;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 13


else if(led == 14) //(5,1)
begin //begin of led == 14

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 18;

else if(v == 4'b0010)
led <= 10;


else if(v == 4'b0100)
led <= 15;

else if(v == 4'b1000)
led <= 13;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 14


else if(led == 15) //(3,5)
begin //begin of led == 15

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 19;

else if(v == 4'b0010)
led <= 11;


else if(v == 4'b0100)
led <= 16;

else if(v == 4'b1000)
led <= 14;




end //end of count == 12500
 
else
begin //begin of else
if(s == 0)
begin
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end ///end of else of led == t
end //end of led == 15


else if(led == 16) //(5,3)
begin //begin of led == 16

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 20;

else if(v == 4'b0010)
led <= 12;


else if(v == 4'b0100)
led <= 13;

else if(v == 4'b1000)
led <= 15;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 16

else if(led == 17) //(2,5)
begin //begin of led == 17


if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led ==  t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 1;

else if(v == 4'b0010)
led <= 13;


else if(v == 4'b0100)
led <= 18;

else if(v == 4'b1000)
led <= 20;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 17


else if(led == 18) //(5,2)
begin //begin of led == 18

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 2;

else if(v == 4'b0010)
led <= 14;


else if(v == 4'b0100)
led <= 19;

else if(v == 4'b1000)
led <= 17;




end //end of count == 12500
 
else
begin //begin of else
if(s == 0)
begin
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 18


else if(led == 19) //(4,5)
begin //begin of led == 19

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 3;

else if(v == 4'b0010)
led <= 15;


else if(v == 4'b0100)
led <= 20;

else if(v == 4'b1000)
led <= 18;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20




end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 19


else if(led == 20) //(5,4)
begin //begin of led == 20

if (led == t)
begin //begin of led == t

if(t == 15)
    t <= 6;

else if (t == 6)
    t <= 9;
    
else if (t == 9)
    t <= 15;        
end //end of led == t

else
begin //begin of else of led == t
if(count > 12500)
begin //begin of count == 12500

count <= 0;
s <= 0;
if(v == 4'b0001)
led <= 4;

else if(v == 4'b0010)
led <= 16;


else if(v == 4'b0100)
led <= 17;

else if(v == 4'b1000)
led <= 19;




end //end of count == 12500
 
else
begin //begin of else
if (s == 0)
begin
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 1;
end

else
begin //begin of else of else

if (t == 1)
begin //begin of t == 1
i1 <= 1'b1;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 1


else if (t == 2)
begin //begin of t == 2
i1 <= 1'b0;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 2

else if (t == 3)
begin //begin of t == 3
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 3

else if (t == 4)
begin //begin of t == 4
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 4

else if (t == 5)
begin //begin of t == 5
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 5

else if (t == 6)
begin //begin of t == 6
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 6

else if (t == 7)
begin //begin of t == 7
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 7

else if (t == 8)
begin //begin of t == 8
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 8

else if (t == 9)
begin //begin of t == 9
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 9

else if (t == 10)
begin //begin of t == 10
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 10

else if (t == 11)
begin //begin of t == 11
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 11

else if (t == 12)
begin //begin of t == 12
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'bz;
count <= count + 1;
s <= 0;

end //end of t == 12

else if (t == 13)
begin //begin of t == 13
i1 <= 1'b1;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 13

else if (t == 14)
begin //begin of t == 14
i1 <= 1'b0;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 14

else if (t == 15)
begin //begin of t == 15
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b1;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 15

else if (t == 16)
begin //begin of t == 16
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'b0;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;

end //end of t == 16

else if (t == 17)
begin //begin of t == 17
i1 <= 1'bz;
i2 <= 1'b1;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 17

else if (t == 18)
begin //begin of t == 18
i1 <= 1'bz;
i2 <= 1'b0;
i3 <= 1'bz;
i4 <= 1'bz;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 18

else if (t == 19)
begin //begin of t == 19
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b1;
i5 <= 1'b0;
count <= count + 1;
s <= 0;

end //end of t == 19

else if (t == 20)
begin //begin of t == 20
i1 <= 1'bz;
i2 <= 1'bz;
i3 <= 1'bz;
i4 <= 1'b0;
i5 <= 1'b1;
count <= count + 1;
s <= 0;
end //end of t == 20s

end //end of else of else

end //end of else
end //end of else of led == t
end //end of led == 20


end //end of clock

end //end of always
               
endmodule                
