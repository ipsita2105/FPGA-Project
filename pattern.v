`timescale 1ns / 1ps

// display DCL

module code(

input clk,
output reg i1,
output reg i2,
output reg i3,
output reg i4,
output reg i5

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
                    
    reg [4:0]state;
    reg [31:0]count;
    reg [3:0]s;
    
    initial
    begin
    state <= 5'b0; 
    s <= 4'b0;
    count <= 32'b0;  
    end   
    
    always@(posedge clock)
    begin
    
    if(state == 0)
    begin
    
                                if(count > 12500)
                                begin
                                count <= 0;
                                state <= state + 1;
                                s <= 0;
                                end // end of count = 12500
                    
                    
                    else
                    begin
                    
                    if(s == 0) // (4,3)
                    begin
                    
                    i1 <= 1'bz;
                    i2 <= 1'bz;
                    i3 <= 1'b0;
                    i4 <= 1'b1;
                    i5 <= 1'bz;    
                    s <= s +1;
                    end // end of s ==0
                    
                    
                    
                   else if(s == 1) // (4,2)
                              begin
                                                               
                                    i1 <= 1'bz;
                                    i2 <= 1'b0;
                                    i3 <= 1'bz;
                                    i4 <= 1'b1;
                                    i5 <= 1'bz;    
                                     s <= s + 1;
                                     
                               end // end of s ==4 
                               
                  else if(s == 2) // (2,3)
                            begin
                                                                                             
                                    i1 <= 1'bz;
                                    i2 <= 1'b1;
                                    i3 <= 1'b0;
                                    i4 <= 1'bz;
                                    i5 <= 1'bz;    
                                    s <= s + 1;
                                                                   
                              end // end of s ==4 
                              
                 else if(s == 3) // (5,3)
                               begin
                                                                                                                           
                                  i1 <= 1'bz;
                                  i2 <= 1'bz;
                                  i3 <= 1'b0;
                                  i4 <= 1'bz;
                                  i5 <= 1'b1;    
                                  s <= s + 1;
                                                                                                 
                         end // end of s ==4 
                         
                         
                else if(s == 4) // (5,4)
                                                        begin
                                                                                                                                                    
                                                           i1 <= 1'bz;
                                                           i2 <= 1'bz;
                                                           i3 <= 1'bz;
                                                           i4 <= 1'b0;
                                                           i5 <= 1'b1;    
                                                           s <= 0;
                                                                                                                          
                                                  end // end of s ==4                                   
                    
                    count <= count + 1;
                    end // end of count  != 12500
  
    end // end of state == 0
    
  else if(state == 1)
        begin
        
                                        if(count > 12500)
                                        begin
                                        count <= 0;
                                        state <= state + 1;
                                        s<=0;
                                        end // end of count = 12500
                                
                                else
                                begin
                                
                                if(s == 0) // (3,4)
                                begin
                                
                                i1 <= 1'bz;
                                i2 <= 1'bz;
                                i3 <= 1'b1;
                                i4 <= 1'b0;
                                i5 <= 1'bz;    
                                s <= s +1;
                                end // end of s ==0
                                
                               else if(s == 1) //(4,3)
                               begin
                               
                               i1 <= 1'bz;
                               i2 <= 1'bz;
                               i3 <= 1'b0;
                               i4 <= 1'b1;
                               i5 <= 1'bz;    
                               s <= s +1;
                               end // end of s ==1
                               
                               
                               else if(s == 2) //(2,4)
                               begin
                                                              
                                i1 <= 1'bz;
                                i2 <= 1'b1;
                                i3 <= 1'bz;
                                i4 <= 1'b0;
                                i5 <= 1'bz;    
                                 s <= s +1;
                                end // end of s ==2
                                
                                else if(s == 3) //(3,2)
                                begin
                                                                                              
                                 i1 <= 1'bz;
                                 i2 <= 1'b0;
                                 i3 <= 1'b1;
                                 i4 <= 1'bz;
                                 i5 <= 1'bz;    
                                 s <= s +1;
                                end // end of s ==3
                                
                                else if(s == 4) //(3,5)
                                begin
                                                                                                                              
                                i1 <= 1'bz;
                                i2 <= 1'bz;
                                i3 <= 1'b1;
                                i4 <= 1'bz;
                                i5 <= 1'b0;    
                                 s <= s +1;
                                  end // end of s ==4
                                  
                                  
                                else if(s == 5) //(5,4)
                                begin
                                                                                                                                                                
                                i1 <= 1'bz;
                                i2 <= 1'bz;
                                i3 <= 1'bz;
                                i4 <= 1'b0;
                                i5 <= 1'b1;    
                                s <= s +1;
                                end // end of s ==0  
                                
                                
                                else if(s == 6) //(4,5)
                                begin
                                                                                                                                                                                                
                                i1 <= 1'bz;
                                i2 <= 1'bz;
                                i3 <= 1'bz;
                                i4 <= 1'b1;
                                i5 <= 1'b0;    
                               s <= 0;
                               end // end of s ==0                                 
                                                              
                               count <= count + 1;
                               
                               end // end of count  != 12500
      
        end // end of state == 1
    
    else if(state == 2)
                begin
                
                                    if(count > 12500)
                                    begin
                                    count <= 0;
                                    state <= state + 1;
                                    s<=0;
                                    end // end of count = 12500
                
                else
                begin
                
                if(s == 0) // (2,1)
                begin
                
                i1 <= 1'b0;
                i2 <= 1'b1;
                i3 <= 1'bz;
                i4 <= 1'bz;
                i5 <= 1'bz;    
                s <= s +1;
                end // end of s ==0
                
               else if(s == 1) // (3,4)
                    begin
                    
                    i1 <= 1'bz;
                    i2 <= 1'bz;
                    i3 <= 1'b1;
                    i4 <= 1'b0;
                    i5 <= 1'bz;    
                    s <= s +1;
                    end // end of s ==1
                    
               else if(s == 2) // (4,3)
                            begin
                            
                            i1 <= 1'bz;
                            i2 <= 1'bz;
                            i3 <= 1'b0;
                            i4 <= 1'b1;
                            i5 <= 1'bz;    
                            s <= s +1;
                            end // end of s ==2     
                
                else if(s == 3) // (3,1)
                           begin
                                            
                                            i1 <= 1'b0;
                                            i2 <= 1'bz;
                                            i3 <= 1'b1;
                                            i4 <= 1'bz;
                                            i5 <= 1'bz;    
                                            s <= s +1;
                           end // end of s ==3
                
                else if(s == 4) // (4,1)
                          begin
                                                           
                                i1 <= 1'b0;
                                i2 <= 1'bz;
                                i3 <= 1'bz;
                                i4 <= 1'b1;
                                i5 <= 1'bz;    
                                 s <= s + 1;
                                 
                           end // end of s ==4 
                           
                   else if(s == 5) // (5,1)
                         begin
                                                                                      
                         i1 <= 1'b0;
                         i2 <= 1'bz;
                         i3 <= 1'bz;
                         i4 <= 1'bz;
                         i5 <= 1'b1;    
                         s <= s + 1;
                                                            
                          end // end of s ==4 
                          
                else if(s == 6) // (4,5)
                        begin
                                                                                                               
                         i1 <= 1'bz;
                         i2 <= 1'bz;
                         i3 <= 1'bz;
                         i4 <= 1'b1;
                         i5 <= 1'b0;    
                         s <= s + 1;
                                                                                     
                        end // end of s ==4
                        
            else if(s == 7) // (5,4)
                    begin
                                                                                                                                       
                    i1 <= 1'bz;
                    i2 <= 1'bz;
                    i3 <= 1'bz;
                    i4 <= 1'b0;
                    i5 <= 1'b1;    
                    s <= s + 1;
                                                                                                             
                   end // end of s ==4
                   
                   else if(s == 8) // (5,2)
                                      begin
                                                                                                                                                         
                                      i1 <= 1'bz;
                                      i2 <= 1'b0;
                                      i3 <= 1'bz;
                                      i4 <= 1'bz;
                                      i5 <= 1'b1;    
                                      s <= 0;
                                                                                                                               
                                     end // end of s ==4                                                                              
                           
                
                count <= count + 1;
                end // end of count  != 12500
              
                end // end of state == 2
    
  
   else if(state == 3)
   begin
                               
                                               if(count > 12500)
                                               begin
                                               count <= 0;
                                               state <= state + 1;
                                               s<=0;
                                               end // end of count = 12500
                               
                               else
                               begin
                               
                               if(s == 0) // (1,2)
                                               begin
                                               
                                               i1 <= 1'b1;
                                               i2 <= 1'b0;
                                               i3 <= 1'bz;
                                               i4 <= 1'bz;
                                               i5 <= 1'bz;    
                                               s <= s +1;
                                               end // end of s ==0
                                               
                                              else if(s == 1) // (2,1)
                                                   begin
                                                   
                                                   i1 <= 1'b0;
                                                   i2 <= 1'b1;
                                                   i3 <= 1'bz;
                                                   i4 <= 1'bz;
                                                   i5 <= 1'bz;    
                                                   s <= s +1;
                                                   end // end of s ==1
                                                   
                                              else if(s == 2) // (3,4)
                                                           begin
                                                           
                                                           i1 <= 1'bz;
                                                           i2 <= 1'bz;
                                                           i3 <= 1'b1;
                                                           i4 <= 1'b0;
                                                           i5 <= 1'bz;    
                                                           s <= s +1;
                                                           end // end of s ==2     
                                               
                                               else if(s == 3) // (1,3)
                                                          begin
                                                                           
                                                                           i1 <= 1'b1;
                                                                           i2 <= 1'bz;
                                                                           i3 <= 1'b0;
                                                                           i4 <= 1'bz;
                                                                           i5 <= 1'bz;    
                                                                           s <= s +1;
                                                          end // end of s ==3
                                               
                                               else if(s == 4) // (1,4)
                                                         begin
                                                                                          
                                                               i1 <= 1'b1;
                                                               i2 <= 1'bz;
                                                               i3 <= 1'bz;
                                                               i4 <= 1'b0;
                                                               i5 <= 1'bz;    
                                                                s <= s + 1;
                                                                
                                                          end // end of s ==4 
                                                          
                                                  else if(s == 5) // (1,5)
                                                        begin
                                                                                                                     
                                                        i1 <= 1'b1;
                                                        i2 <= 1'bz;
                                                        i3 <= 1'bz;
                                                        i4 <= 1'bz;
                                                        i5 <= 1'b0;    
                                                        s <= s + 1;
                                                                                           
                                                         end // end of s ==4 
                                                         
                                               else if(s == 6) // (5,2)
                                                       begin
                                                                                                                                              
                                                        i1 <= 1'bz;
                                                        i2 <= 1'b0;
                                                        i3 <= 1'bz;
                                                        i4 <= 1'bz;
                                                        i5 <= 1'b1;    
                                                        s <= s + 1;
                                                                                                                    
                                                       end // end of s ==4
                                                       
                                           else if(s == 7) // (2,5)
                                                   begin
                                                                                                                                                                      
                                                   i1 <= 1'bz;
                                                   i2 <= 1'b1;
                                                   i3 <= 1'bz;
                                                   i4 <= 1'bz;
                                                   i5 <= 1'b0;    
                                                   s <= s + 1;
                                                                                                                                            
                                                  end // end of s ==4
                                                  
                                                  else if(s == 8) // (4,5)
                                                                     begin
                                                                                                                                                                                        
                                                                     i1 <= 1'bz;
                                                                     i2 <= 1'bz;
                                                                     i3 <= 1'bz;
                                                                     i4 <= 1'b1;
                                                                     i5 <= 1'b0;    
                                                                     s <= s+1;
                                                                                                                                                              
                                                                    end // end of s ==4 
                                                                    
                                    else if(s == 9) // (5,3)
                                                  begin
                                                                                                                                                                                                                                                            
                                                   i1 <= 1'bz;
                                                   i2 <= 1'bz;
                                                   i3 <= 1'b0;
                                                   i4 <= 1'bz;
                                                   i5 <= 1'b1;    
                                                   s <= s+1;
                                                                                                                                                                                                                                  
                                                 end // end of s ==4                                                                     
                                       else if(s == 10) // (2,3)
                                                                 begin
                                                                 
                                                                 i1 <= 1'bz;
                                                                 i2 <= 1'b1;
                                                                 i3 <= 1'b0;
                                                                 i4 <= 1'bz;
                                                                 i5 <= 1'bz;    
                                                                 s <= s +1;
                                                                 
                                                                 end
                                        else if(s == 11) // (4,2)
                                                  begin
                                                                                                                                 
                                                    i1 <= 1'bz;
                                                    i2 <= 1'b0;
                                                    i3 <= 1'bz;
                                                    i4 <= 1'b1;
                                                    i5 <= 1'bz;    
                                                    s <= 0;
                                                 end // end of s ==11
                                                 
                                                                                                                                         
                               count <= count + 1;
                               end // end of count  != 12500
                             
                               end // end of state == 3 
                               
   else if(state == 4)
                                  begin
                                                              
                                                                              if(count > 12500)
                                                                              begin
                                                                              count <= 0;
                                                                              state <= state + 1;
                                                                              s<=0;
                                                                              end // end of count = 12500
                                                              
                                                              else
                                                              begin
                                                              
                                                              if(s == 0) // (1,2)
                                                                              begin
                                                                              
                                                                              i1 <= 1'b1;
                                                                              i2 <= 1'b0;
                                                                              i3 <= 1'bz;
                                                                              i4 <= 1'bz;
                                                                              i5 <= 1'bz;    
                                                                              s <= s +1;
                                                                              end // end of s ==0
                                                                              
                                                                             else if(s == 1) // (2,1)
                                                                                  begin
                                                                                  
                                                                                  i1 <= 1'b0;
                                                                                  i2 <= 1'b1;
                                                                                  i3 <= 1'bz;
                                                                                  i4 <= 1'bz;
                                                                                  i5 <= 1'bz;    
                                                                                  s <= s +1;
                                                                                  end // end of s ==1
                                                                                  
                                                                             else if(s == 2) // (2,4)
                                                                                          begin
                                                                                          
                                                                                          i1 <= 1'bz;
                                                                                          i2 <= 1'b1;
                                                                                          i3 <= 1'bz;
                                                                                          i4 <= 1'b0;
                                                                                          i5 <= 1'bz;    
                                                                                          s <= s +1;
                                                                                          end // end of s ==2     
                                                                              
                                                                              else if(s == 3) // (3,2)
                                                                                         begin
                                                                                                          
                                                                                                          i1 <= 1'bz;
                                                                                                          i2 <= 1'b0;
                                                                                                          i3 <= 1'b1;
                                                                                                          i4 <= 1'bz;
                                                                                                          i5 <= 1'bz;    
                                                                                                          s <= s +1;
                                                                                         end // end of s ==3
                                                                              
                                                                              else if(s == 4) // (3,5)
                                                                                        begin
                                                                                                                         
                                                                                              i1 <= 1'bz;
                                                                                              i2 <= 1'bz;
                                                                                              i3 <= 1'b1;
                                                                                              i4 <= 1'bz;
                                                                                              i5 <= 1'b0;    
                                                                                               s <= s + 1;
                                                                                               
                                                                                         end // end of s ==4 
                                                                                         
                                                                                 else if(s == 5) // (2,5)
                                                                                       begin
                                                                                                                                                    
                                                                                       i1 <= 1'bz;
                                                                                       i2 <= 1'b1;
                                                                                       i3 <= 1'bz;
                                                                                       i4 <= 1'bz;
                                                                                       i5 <= 1'b0;    
                                                                                       s <= s + 1;
                                                                                                                          
                                                                                        end // end of s ==4 
                                                                                        
                                                                              else if(s == 6) // (5,2)
                                                                                      begin
                                                                                                                                                                             
                                                                                       i1 <= 1'bz;
                                                                                       i2 <= 1'b0;
                                                                                       i3 <= 1'bz;
                                                                                       i4 <= 1'bz;
                                                                                       i5 <= 1'b1;    
                                                                                       s <= 0;                                                                                                                                                  
                                                                                      end // end of s ==4                                                                                    
                                                              
                                                              count <= count + 1;
                                                              end // end of count  != 12500
                                                            
                                                              end // end of state == 4
                                                              
     else if(state == 5)
                    begin
                                                
                                                                if(count > 12500)
                                                                begin
                                                                count <= 0;
                                                                state <= state + 1;
                                                                s<=0;
                                                                end // end of count = 12500
                                                
                                                else
                                                begin
                                                
                                                if(s == 0) // (1,2)
                                                                begin
                                                                
                                                                i1 <= 1'b1;
                                                                i2 <= 1'b0;
                                                                i3 <= 1'bz;
                                                                i4 <= 1'bz;
                                                                i5 <= 1'bz;    
                                                                s <= s +1;
                                                                end // end of s ==0
                                                                
                                                               else if(s == 1) // (3,1)
                                                                    begin
                                                                    
                                                                    i1 <= 1'b0;
                                                                    i2 <= 1'bz;
                                                                    i3 <= 1'b1;
                                                                    i4 <= 1'bz;
                                                                    i5 <= 1'bz;    
                                                                    s <= s +1;
                                                                    end // end of s ==1
                                                                    
                                                               else if(s == 2) // (4,1)
                                                                            begin
                                                                            
                                                                            i1 <= 1'b0;
                                                                            i2 <= 1'bz;
                                                                            i3 <= 1'bz;
                                                                            i4 <= 1'b1;
                                                                            i5 <= 1'bz;    
                                                                            s <= s +1;
                                                                            end // end of s ==2     
                                                                
                                                                else if(s == 3) // (5,1)
                                                                           begin
                                                                                            
                                                                                            i1 <= 1'b0;
                                                                                            i2 <= 1'bz;
                                                                                            i3 <= 1'bz;
                                                                                            i4 <= 1'bz;
                                                                                            i5 <= 1'b1;    
                                                                                            s <= s +1;
                                                                           end // end of s ==3
                                                                
                                                                else if(s == 4) // (2,5)
                                                                          begin
                                                                                                           
                                                                                i1 <= 1'bz;
                                                                                i2 <= 1'b1;
                                                                                i3 <= 1'bz;
                                                                                i4 <= 1'bz;
                                                                                i5 <= 1'b0;    
                                                                                 s <= 0;
                                                                                 
                                                                           end // end of s ==4                                                                                                                                                           
                                                
                                                count <= count + 1;
                                                end // end of count  != 12500
                                              
                                                end // end of state == 3                                                                                     
    
     else if(state == 6)
                                                                 begin
                                                                 
                                                                                             if(count > 12500)
                                                                                             begin
                                                                                             count <= 0;
                                                                                             state <= state + 1;
                                                                                             s <= 0;
                                                                                             end // end of count = 12500
                                                                                 
                                                                                 
                                                                                 else
                                                                                 begin
                                                                                 
                                                                                 if(s == 0) // (1,3)
                                                                                 begin
                                                                                 
                                                                                 i1 <= 1'b1;
                                                                                 i2 <= 1'bz;
                                                                                 i3 <= 1'b0;
                                                                                 i4 <= 1'bz;
                                                                                 i5 <= 1'bz;    
                                                                                 s <= s +1;
                                                                                 end // end of s ==0
                                                                                 
                                                                                  else if(s == 1) // (1,5)
                                                                                  begin
                                                                                  
                                                                                  i1 <= 1'b1;
                                                                                  i2 <= 1'bz;
                                                                                  i3 <= 1'bz;
                                                                                  i4 <= 1'bz;
                                                                                  i5 <= 1'b0;    
                                                                                  s <= s +1;
                                                                                  end // end of s ==0
                                                                                 
                                                                                 
                                                                                 
                                                                                else if(s == 2) // (1,4)
                                                                                           begin
                                                                                                                            
                                                                                                 i1 <= 1'b1;
                                                                                                 i2 <= 1'bz;
                                                                                                 i3 <= 1'bz;
                                                                                                 i4 <= 1'b0;
                                                                                                 i5 <= 1'bz;    
                                                                                                  s <= 0;
                                                                                                  
                                                                                            end // end of s ==4 
                                                                                 
                                                                                 count <= count + 1;
                                                                                 end // end of count  != 12500
                                                               
                                                                 end // end of state == 0
                                                                 
   else if(state == 7)
  begin
                                                                                                                                 
                                     if(count > 23500)
                                     begin
                                     count <= 0;
                                     state <= state + 1;
                                     s <= 0;
                                     end // end of count = 12500
                                                                                                                                                 
                                                                                                                                                 
              else
              begin
                                                                                                                                                 
                   i1 <= 1'bz;
                   i2 <= 1'bz;
                   i3 <= 1'bz;
                   i4 <= 1'bz;
                   i5 <= 1'bz;    
                    s <= s +1;
                    
                 count <= count + 1;
                end // end of s 
                                                                                                                                                 
                  
                   
            end // end of state 7
 
 // Begining of C
 
 else if(state == 8)
                begin
                
                                            if(count > 12500)
                                            begin
                                            count <= 0;
                                            state <= state + 1;
                                            s <= 0;
                                            end // end of count = 12500
                                
                                
                                else
                                begin
                                
                                if(s == 0) // (4,3)
                                begin
                                
                                i1 <= 1'bz;
                                i2 <= 1'bz;
                                i3 <= 1'b0;
                                i4 <= 1'b1;
                                i5 <= 1'bz;    
                                s <= s +1;
                                end // end of s ==0
                                
                                
                                
                               else if(s == 1) // (4,2)
                                          begin
                                                                           
                                                i1 <= 1'bz;
                                                i2 <= 1'b0;
                                                i3 <= 1'bz;
                                                i4 <= 1'b1;
                                                i5 <= 1'bz;    
                                                 s <= s + 1;
                                                 
                                           end // end of s ==4 
                                           
                              else if(s == 2) // (2,3)
                                        begin
                                                                                                         
                                                i1 <= 1'bz;
                                                i2 <= 1'b1;
                                                i3 <= 1'b0;
                                                i4 <= 1'bz;
                                                i5 <= 1'bz;    
                                                s <= s + 1;
                                                                               
                                          end // end of s ==4 
                                          
                             else if(s == 3) // (5,3)
                                           begin
                                                                                                                                       
                                              i1 <= 1'bz;
                                              i2 <= 1'bz;
                                              i3 <= 1'b0;
                                              i4 <= 1'bz;
                                              i5 <= 1'b1;    
                                              s <= s + 1;
                                                                                                             
                                     end // end of s ==4 
                                     
                                     
                            else if(s == 4) // (5,4)
                                                                    begin
                                                                                                                                                                
                                                                       i1 <= 1'bz;
                                                                       i2 <= 1'bz;
                                                                       i3 <= 1'bz;
                                                                       i4 <= 1'b0;
                                                                       i5 <= 1'b1;    
                                                                       s <= 0;
                                                                                                                                      
                                                              end // end of s ==4                                   
                                
                                count <= count + 1;
                                end // end of count  != 12500
              
                end // end of state == 8      
                   
else if(state == 9)
                        begin
                        
                                                        if(count > 12500)
                                                        begin
                                                        count <= 0;
                                                        state <= state + 1;
                                                        s<=0;
                                                        end // end of count = 12500
                                                
                                                else
                                                begin
                                                
                                                if(s == 0) // (3,4)
                                                begin
                                                
                                                i1 <= 1'bz;
                                                i2 <= 1'bz;
                                                i3 <= 1'b1;
                                                i4 <= 1'b0;
                                                i5 <= 1'bz;    
                                                s <= s +1;
                                                end // end of s ==0
                                                
                                               else if(s == 1) //(4,3)
                                               begin
                                               
                                               i1 <= 1'bz;
                                               i2 <= 1'bz;
                                               i3 <= 1'b0;
                                               i4 <= 1'b1;
                                               i5 <= 1'bz;    
                                               s <= s +1;
                                               end // end of s ==1
                                               
                                               
                                               else if(s == 2) //(2,4)
                                               begin
                                                                              
                                                i1 <= 1'bz;
                                                i2 <= 1'b1;
                                                i3 <= 1'bz;
                                                i4 <= 1'b0;
                                                i5 <= 1'bz;    
                                                 s <= s +1;
                                                end // end of s ==2
                                                
                                                else if(s == 3) //(3,2)
                                                begin
                                                                                                              
                                                 i1 <= 1'bz;
                                                 i2 <= 1'b0;
                                                 i3 <= 1'b1;
                                                 i4 <= 1'bz;
                                                 i5 <= 1'bz;    
                                                 s <= s +1;
                                                end // end of s ==3
                                                
                                                else if(s == 4) //(3,5)
                                                begin
                                                                                                                                              
                                                i1 <= 1'bz;
                                                i2 <= 1'bz;
                                                i3 <= 1'b1;
                                                i4 <= 1'bz;
                                                i5 <= 1'b0;    
                                                 s <= s +1;
                                                  end // end of s ==4
                                                  
                                                  
                                                else if(s == 5) //(5,4)
                                                begin
                                                                                                                                                                                
                                                i1 <= 1'bz;
                                                i2 <= 1'bz;
                                                i3 <= 1'bz;
                                                i4 <= 1'b0;
                                                i5 <= 1'b1;    
                                                s <= s +1;
                                                end // end of s ==0  
                                                
                                                
                                                else if(s == 6) //(4,5)
                                                begin
                                                                                                                                                                                                                
                                                i1 <= 1'bz;
                                                i2 <= 1'bz;
                                                i3 <= 1'bz;
                                                i4 <= 1'b1;
                                                i5 <= 1'b0;    
                                               s <= 0;
                                               end // end of s ==0                                 
                                                                              
                                               count <= count + 1;
                                               
                                               end // end of count  != 12500
                      
                        end // end of state == 9      
                            
  else if(state == 10)
                                        begin
                                        
                                                            if(count > 12500)
                                                            begin
                                                            count <= 0;
                                                            state <= state + 1;
                                                            s<=0;
                                                            end // end of count = 12500
                                        
                                        else
                                        begin
                                        
                                        if(s == 0) // (2,1)
                                        begin
                                        
                                        i1 <= 1'b0;
                                        i2 <= 1'b1;
                                        i3 <= 1'bz;
                                        i4 <= 1'bz;
                                        i5 <= 1'bz;    
                                        s <= s +1;
                                        end // end of s ==0
                                        
                                       else if(s == 1) // (3,4)
                                            begin
                                            
                                            i1 <= 1'bz;
                                            i2 <= 1'bz;
                                            i3 <= 1'b1;
                                            i4 <= 1'b0;
                                            i5 <= 1'bz;    
                                            s <= s +1;
                                            end // end of s ==1
                                            
                                       else if(s == 2) // (4,3)
                                                    begin
                                                    
                                                    i1 <= 1'bz;
                                                    i2 <= 1'bz;
                                                    i3 <= 1'b0;
                                                    i4 <= 1'b1;
                                                    i5 <= 1'bz;    
                                                    s <= s +1;
                                                    end // end of s ==2     
                                        
                                        else if(s == 3) // (3,1)
                                                   begin
                                                                    
                                                                    i1 <= 1'b0;
                                                                    i2 <= 1'bz;
                                                                    i3 <= 1'b1;
                                                                    i4 <= 1'bz;
                                                                    i5 <= 1'bz;    
                                                                    s <= s +1;
                                                   end // end of s ==3
                                        
                                        else if(s == 4) // (4,1)
                                                  begin
                                                                                   
                                                        i1 <= 1'b0;
                                                        i2 <= 1'bz;
                                                        i3 <= 1'bz;
                                                        i4 <= 1'b1;
                                                        i5 <= 1'bz;    
                                                         s <= s + 1;
                                                         
                                                   end // end of s ==4 
                                                   
                                           else if(s == 5) // (5,1)
                                                 begin
                                                                                                              
                                                 i1 <= 1'b0;
                                                 i2 <= 1'bz;
                                                 i3 <= 1'bz;
                                                 i4 <= 1'bz;
                                                 i5 <= 1'b1;    
                                                 s <= s + 1;
                                                                                    
                                                  end // end of s ==4 
                                                  
                                        else if(s == 6) // (4,5)
                                                begin
                                                                                                                                       
                                                 i1 <= 1'bz;
                                                 i2 <= 1'bz;
                                                 i3 <= 1'bz;
                                                 i4 <= 1'b1;
                                                 i5 <= 1'b0;    
                                                 s <= s + 1;
                                                                                                             
                                                end // end of s ==4
                                                
                                    else if(s == 7) // (5,4)
                                            begin
                                                                                                                                                               
                                            i1 <= 1'bz;
                                            i2 <= 1'bz;
                                            i3 <= 1'bz;
                                            i4 <= 1'b0;
                                            i5 <= 1'b1;    
                                            s <= s + 1;
                                                                                                                                     
                                           end // end of s ==4
                                           
                                           else if(s == 8) // (5,2)
                                                              begin
                                                                                                                                                                                 
                                                              i1 <= 1'bz;
                                                              i2 <= 1'b0;
                                                              i3 <= 1'bz;
                                                              i4 <= 1'bz;
                                                              i5 <= 1'b1;    
                                                              s <= 0;
                                                                                                                                                       
                                                             end // end of s ==4                                                                              
                                                   
                                        
                                        count <= count + 1;
                                        end // end of count  != 12500
                                      
                                        end // end of state == 10          
else if(state == 11)
                                               begin
                                               
                                                                   if(count > 12500)
                                                                   begin
                                                                   count <= 0;
                                                                   state <= state + 1;
                                                                   s<=0;
                                                                   end // end of count = 12500
                                               
                                               else
                                               begin
                                               
                                               if(s == 0) // (1,2)
                                               begin
                                               
                                               i1 <= 1'b1;
                                               i2 <= 1'b0;
                                               i3 <= 1'bz;
                                               i4 <= 1'bz;
                                               i5 <= 1'bz;    
                                               s <= s +1;
                                               end // end of s ==0
                                               
                                              else if(s == 1) // (1,3)
                                                   begin
                                                   
                                                   i1 <= 1'b1;
                                                   i2 <= 1'bz;
                                                   i3 <= 1'b0;
                                                   i4 <= 1'bz;
                                                   i5 <= 1'bz;    
                                                   s <= s +1;
                                                   end // end of s ==1
                                                   
                                              else if(s == 2) // (1,4)
                                                           begin
                                                           
                                                           i1 <= 1'b1;
                                                           i2 <= 1'bz;
                                                           i3 <= 1'bz;
                                                           i4 <= 1'b0;
                                                           i5 <= 1'bz;    
                                                           s <= s +1;
                                                           end // end of s ==2     
                                               
                                               else if(s == 3) // (1,5)
                                                          begin
                                                                           
                                                                           i1 <= 1'b1;
                                                                           i2 <= 1'bz;
                                                                           i3 <= 1'bz;
                                                                           i4 <= 1'bz;
                                                                           i5 <= 1'b0;    
                                                                           s <= s +1;
                                                          end // end of s ==3
                                               
                                               else if(s == 4) // (2,5)
                                                         begin
                                                                                          
                                                               i1 <= 1'bz;
                                                               i2 <= 1'b1;
                                                               i3 <= 1'bz;
                                                               i4 <= 1'bz;
                                                               i5 <= 1'b0;    
                                                                s <= s + 1;
                                                                
                                                          end // end of s ==4 
                                                          
                                                  else if(s == 5) // (2,1)
                                                        begin
                                                                                                                     
                                                        i1 <= 1'b0;
                                                        i2 <= 1'b1;
                                                        i3 <= 1'bz;
                                                        i4 <= 1'bz;
                                                        i5 <= 1'bz;    
                                                        s <= s + 1;
                                                                                           
                                                         end // end of s ==4 
                                                         
                                               else if(s == 6) // (5,2)
                                                       begin
                                                                                                                                              
                                                        i1 <= 1'bz;
                                                        i2 <= 1'b0;
                                                        i3 <= 1'bz;
                                                        i4 <= 1'bz;
                                                        i5 <= 1'b1;    
                                                        s <= s + 1;
                                                                                                                    
                                                       end // end of s ==4
                                                       
                                           else if(s == 7) // (3,4)
                                                   begin
                                                                                                                                                                      
                                                   i1 <= 1'bz;
                                                   i2 <= 1'bz;
                                                   i3 <= 1'b1;
                                                   i4 <= 1'b0;
                                                   i5 <= 1'bz;    
                                                   s <= s + 1;
                                                                                                                                            
                                                  end // end of s ==4
                                                  
                                                  else if(s == 8) // (4,5)
                                                                     begin
                                                                                                                                                                                        
                                                                     i1 <= 1'bz;
                                                                     i2 <= 1'bz;
                                                                     i3 <= 1'bz;
                                                                     i4 <= 1'b1;
                                                                     i5 <= 1'b0;    
                                                                     s <= 0;
                                                                                                                                                              
                                                                    end // end of s ==4                                                                              
                                                          
                                               
                                               count <= count + 1;
                                               end // end of count  != 12500
                                             
                                               end // end of state == 11 
                                               
                                               
 else if(state == 12)
                                                                  begin
                                                                  
                                                                                      if(count > 12500)
                                                                                      begin
                                                                                      count <= 0;
                                                                                      state <= state + 1;
                                                                                      s<=0;
                                                                                      end // end of count = 12500
                                                                  
                                                                  else
                                                                  begin
                                                                  
                                                                  if(s == 0) // (1,2)
                                                                  begin
                                                                  
                                                                  i1 <= 1'b1;
                                                                  i2 <= 1'b0;
                                                                  i3 <= 1'bz;
                                                                  i4 <= 1'bz;
                                                                  i5 <= 1'bz;    
                                                                  s <= s +1;
                                                                  end // end of s ==0
                                                                  
                                                                 else if(s == 1) // (2,1)
                                                                      begin
                                                                      
                                                                      i1 <= 1'b0;
                                                                      i2 <= 1'b1;
                                                                      i3 <= 1'bz;
                                                                      i4 <= 1'bz;
                                                                      i5 <= 1'bz;    
                                                                      s <= s +1;
                                                                      end // end of s ==1
                                                                      
                                                                 else if(s == 2) // (2,5)
                                                                              begin
                                                                              
                                                                              i1 <= 1'bz;
                                                                              i2 <= 1'b1;
                                                                              i3 <= 1'bz;
                                                                              i4 <= 1'bz;
                                                                              i5 <= 1'b0;    
                                                                              s <= s +1;
                                                                              end // end of s ==2     
                                                                  
                                                                  else if(s == 3) // (5,2)
                                                                             begin
                                                                                              
                                                                                              i1 <= 1'bz;
                                                                                              i2 <= 1'b0;
                                                                                              i3 <= 1'bz;
                                                                                              i4 <= 1'bz;
                                                                                              i5 <= 1'b1;    
                                                                                              s <= 0;
                                                                             end // end of s ==3                                                                                                                                                                                                                                                            
                                                                  
                                                                  count <= count + 1;
                                                                  end // end of count  != 12500
                                                                
                                                                  end // end of state == 12                                                        
else if(state == 13)
                                                        begin
                                                        
                                                                            if(count > 12500)
                                                                            begin
                                                                            count <= 0;
                                                                            state <= state + 1;
                                                                            s<=0;
                                                                            end // end of count = 12500
                                                        
                                                        else
                                                        begin
                                                        
                                                        if(s == 0) // (1,2)
                                                        begin
                                                        
                                                        i1 <= 1'b1;
                                                        i2 <= 1'b0;
                                                        i3 <= 1'bz;
                                                        i4 <= 1'bz;
                                                        i5 <= 1'bz;    
                                                        s <= s +1;
                                                        end // end of s ==0
                                                        
                                                       else if(s == 1) // (2,5)
                                                            begin
                                                            
                                                            i1 <= 1'bz;
                                                            i2 <= 1'b1;
                                                            i3 <= 1'bz;
                                                            i4 <= 1'bz;
                                                            i5 <= 1'b0;    
                                                            s <= 0;
                                                            end // end of s ==1                                                                                                                                                                                                                                                                                                                     
                                                        
                                                        count <= count + 1;
                                                        end // end of count  != 12500
                                                      
                                                        end // end of state == 13
                                                        
            else if(state == 14)
            begin
            
                                                    if(count > 24500)
                                                    begin
                                                    count <= 0;
                                                    state <= state + 1;
                                                    s<=0;
                                                    end // end of count = 12500
                                                    
                                                    else
                                                    begin                                                   
                                                    
                                                    i1 <= 1'bz;
                                                    i2 <= 1'bz;
                                                    i3 <= 1'bz;
                                                    i4 <= 1'bz;
                                                    i5 <= 1'bz;    
                                                    
                                                    count <= count + 1;
                                                    end // end of s ==0
                                                                                                                                                                                                                                                                                                                                                                        
                                                    
  
                                                    
        end // end of state == 14
        
        // start of L
        
        else if(state == 15)
                        begin
                        
                                                    if(count > 12500)
                                                    begin
                                                    count <= 0;
                                                    state <= state + 1;
                                                    s <= 0;
                                                    end // end of count = 12500
                                        
                                        
                                        else
                                        begin
                                        
                                        if(s == 0) // (4,3)
                                        begin
                                        
                                        i1 <= 1'bz;
                                        i2 <= 1'bz;
                                        i3 <= 1'b0;
                                        i4 <= 1'b1;
                                        i5 <= 1'bz;    
                                        s <= s +1;
                                        end // end of s ==0
                                        
                                        
                                        
                                       else if(s == 1) // (4,2)
                                                  begin
                                                                                   
                                                        i1 <= 1'bz;
                                                        i2 <= 1'b0;
                                                        i3 <= 1'bz;
                                                        i4 <= 1'b1;
                                                        i5 <= 1'bz;    
                                                         s <= s + 1;
                                                         
                                                   end // end of s ==4 
                                                   
                                      else if(s == 2) // (2,3)
                                                begin
                                                                                                                 
                                                        i1 <= 1'bz;
                                                        i2 <= 1'b1;
                                                        i3 <= 1'b0;
                                                        i4 <= 1'bz;
                                                        i5 <= 1'bz;    
                                                        s <= s + 1;
                                                                                       
                                                  end // end of s ==4 
                                                  
                                     else if(s == 3) // (5,3)
                                                   begin
                                                                                                                                               
                                                      i1 <= 1'bz;
                                                      i2 <= 1'bz;
                                                      i3 <= 1'b0;
                                                      i4 <= 1'bz;
                                                      i5 <= 1'b1;    
                                                      s <= s + 1;
                                                                                                                     
                                             end // end of s ==4 
                                             
                                             
                                    else if(s == 4) // (5,4)
                                                                            begin
                                                                                                                                                                        
                                                                               i1 <= 1'bz;
                                                                               i2 <= 1'bz;
                                                                               i3 <= 1'bz;
                                                                               i4 <= 1'b0;
                                                                               i5 <= 1'b1;    
                                                                               s <= 0;
                                                                                                                                              
                                                                      end // end of s ==4                                   
                                        
                                        count <= count + 1;
                                        end // end of count  != 12500
                      
                        end // end of state == 15                                                                                                                                                                                     
   else if(state == 16)
                                                begin
                                                
                                                                                if(count > 12500)
                                                                                begin
                                                                                count <= 0;
                                                                                state <= state + 1;
                                                                                s<=0;
                                                                                end // end of count = 12500
                                                                        
                                                                        else
                                                                        begin
                                                                        
                                                                        if(s == 0) // (3,4)
                                                                        begin
                                                                        
                                                                        i1 <= 1'bz;
                                                                        i2 <= 1'bz;
                                                                        i3 <= 1'b1;
                                                                        i4 <= 1'b0;
                                                                        i5 <= 1'bz;    
                                                                        s <= s +1;
                                                                        end // end of s ==0
                                                                        
                                                                       
                                                                       else if(s == 1) //(2,4)
                                                                       begin
                                                                                                      
                                                                        i1 <= 1'bz;
                                                                        i2 <= 1'b1;
                                                                        i3 <= 1'bz;
                                                                        i4 <= 1'b0;
                                                                        i5 <= 1'bz;    
                                                                         s <= s +1;
                                                                        end // end of s ==2
                                                                        
                                                                        else if(s == 2) //(3,2)
                                                                        begin
                                                                                                                                      
                                                                         i1 <= 1'bz;
                                                                         i2 <= 1'b0;
                                                                         i3 <= 1'b1;
                                                                         i4 <= 1'bz;
                                                                         i5 <= 1'bz;    
                                                                         s <= s +1;
                                                                        end // end of s ==3
                                                                        
                                                                        else if(s == 3) //(3,5)
                                                                        begin
                                                                                                                                                                      
                                                                        i1 <= 1'bz;
                                                                        i2 <= 1'bz;
                                                                        i3 <= 1'b1;
                                                                        i4 <= 1'bz;
                                                                        i5 <= 1'b0;    
                                                                         s <= s +1;
                                                                          end // end of s ==4
                                                                          
                                                                          
                                                                        else if(s == 4) //(5,4)
                                                                        begin
                                                                                                                                                                                                        
                                                                        i1 <= 1'bz;
                                                                        i2 <= 1'bz;
                                                                        i3 <= 1'bz;
                                                                        i4 <= 1'b0;
                                                                        i5 <= 1'b1;    
                                                                        s <= s +1;
                                                                        end // end of s ==0  
                                                                        
                                                                        
                                                                        else if(s == 5) //(4,5)
                                                                        begin
                                                                                                                                                                                                                                        
                                                                        i1 <= 1'bz;
                                                                        i2 <= 1'bz;
                                                                        i3 <= 1'bz;
                                                                        i4 <= 1'b1;
                                                                        i5 <= 1'b0;    
                                                                       s <= 0;
                                                                       end // end of s ==0                                 
                                                                                                      
                                                                       count <= count + 1;
                                                                       
                                                                       end // end of count  != 12500
                                              
    
  end // end of state == 16
  
  
   else if(state == 17)
                                         begin
                                         
                                                             if(count > 12500)
                                                             begin
                                                             count <= 0;
                                                             state <= state + 1;
                                                             s<=0;
                                                             end // end of count = 12500
                                         
                                         else
                                         begin
                                         
                                         if(s == 0) // (2,1)
                                         begin
                                         
                                         i1 <= 1'b0;
                                         i2 <= 1'b1;
                                         i3 <= 1'bz;
                                         i4 <= 1'bz;
                                         i5 <= 1'bz;    
                                         s <= s +1;
                                         end // end of s ==0
                                             
                                         
                                         else if(s == 1) // (3,1)
                                                    begin
                                                                     
                                                                     i1 <= 1'b0;
                                                                     i2 <= 1'bz;
                                                                     i3 <= 1'b1;
                                                                     i4 <= 1'bz;
                                                                     i5 <= 1'bz;    
                                                                     s <= s +1;
                                                    end // end of s ==3
                                         
                                         else if(s == 2) // (4,1)
                                                   begin
                                                                                    
                                                         i1 <= 1'b0;
                                                         i2 <= 1'bz;
                                                         i3 <= 1'bz;
                                                         i4 <= 1'b1;
                                                         i5 <= 1'bz;    
                                                          s <= s + 1;
                                                          
                                                    end // end of s ==4 
                                                    
                                            else if(s == 3) // (5,1)
                                                  begin
                                                                                                               
                                                  i1 <= 1'b0;
                                                  i2 <= 1'bz;
                                                  i3 <= 1'bz;
                                                  i4 <= 1'bz;
                                                  i5 <= 1'b1;    
                                                  s <= s + 1;
                                                                                     
                                                   end // end of s ==4 
                                                   
                                         else if(s == 4) // (4,5)
                                                 begin
                                                                                                                                        
                                                  i1 <= 1'bz;
                                                  i2 <= 1'bz;
                                                  i3 <= 1'bz;
                                                  i4 <= 1'b1;
                                                  i5 <= 1'b0;    
                                                  s <= s + 1;
                                                                                                              
                                                 end // end of s ==4
                                                 
                                     else if(s == 5) // (5,4)
                                             begin
                                                                                                                                                                
                                             i1 <= 1'bz;
                                             i2 <= 1'bz;
                                             i3 <= 1'bz;
                                             i4 <= 1'b0;
                                             i5 <= 1'b1;    
                                             s <= s + 1;
                                                                                                                                      
                                            end // end of s ==4
                                            
                                            else if(s == 6) // (5,2)
                                                               begin
                                                                                                                                                                                  
                                                               i1 <= 1'bz;
                                                               i2 <= 1'b0;
                                                               i3 <= 1'bz;
                                                               i4 <= 1'bz;
                                                               i5 <= 1'b1;    
                                                               s <= 0;
                                                                                                                                                        
                                                              end // end of s ==4                                                                              
                                                    
                                         
                                         count <= count + 1;
                                         end // end of count  != 12500
                                       
                                         end // end of state == 17
                                         
    else if(state == 18)
                                                                            begin
                                                                            
                                                                                                if(count > 12500)
                                                                                                begin
                                                                                                count <= 0;
                                                                                                state <= state + 1;
                                                                                                s<=0;
                                                                                                end // end of count = 12500
                                                                            
                                                                            else
                                                                            begin
                                                                            
                                                                            if(s == 0) // (1,2)
                                                                            begin
                                                                            
                                                                            i1 <= 1'b1;
                                                                            i2 <= 1'b0;
                                                                            i3 <= 1'bz;
                                                                            i4 <= 1'bz;
                                                                            i5 <= 1'bz;    
                                                                            s <= s +1;
                                                                            end // end of s ==0
                                                                            
                                                                           else if(s == 1) // (1,3)
                                                                                begin
                                                                                
                                                                                i1 <= 1'b1;
                                                                                i2 <= 1'bz;
                                                                                i3 <= 1'b0;
                                                                                i4 <= 1'bz;
                                                                                i5 <= 1'bz;    
                                                                                s <= s +1;
                                                                                end // end of s ==1
                                                                                
                                                                           else if(s == 2) // (1,4)
                                                                                        begin
                                                                                        
                                                                                        i1 <= 1'b1;
                                                                                        i2 <= 1'bz;
                                                                                        i3 <= 1'bz;
                                                                                        i4 <= 1'b0;
                                                                                        i5 <= 1'bz;    
                                                                                        s <= s +1;
                                                                                        end // end of s ==2     
                                                                            
                                                                            else if(s == 3) // (1,5)
                                                                                       begin
                                                                                                        
                                                                                                        i1 <= 1'b1;
                                                                                                        i2 <= 1'bz;
                                                                                                        i3 <= 1'bz;
                                                                                                        i4 <= 1'bz;
                                                                                                        i5 <= 1'b0;    
                                                                                                        s <= s +1;
                                                                                       end // end of s ==3
                                                                            
                                                                            else if(s == 4) // (2,5)
                                                                                      begin
                                                                                                                       
                                                                                            i1 <= 1'bz;
                                                                                            i2 <= 1'b1;
                                                                                            i3 <= 1'bz;
                                                                                            i4 <= 1'bz;
                                                                                            i5 <= 1'b0;    
                                                                                             s <= s + 1;
                                                                                             
                                                                                       end // end of s ==4 
                                                                                       
                                                                             
                                                                                      
                                                                            else if(s == 5) // (5,2)
                                                                                    begin
                                                                                                                                                                           
                                                                                     i1 <= 1'bz;
                                                                                     i2 <= 1'b0;
                                                                                     i3 <= 1'bz;
                                                                                     i4 <= 1'bz;
                                                                                     i5 <= 1'b1;    
                                                                                     s <= s + 1;
                                                                                                                                                 
                                                                                    end // end of s ==4
                                                                                    
                                                                     
                                                                               
                                                                               else if(s == 6) // (4,5)
                                                                                                  begin
                                                                                                                                                                                                                     
                                                                                                  i1 <= 1'bz;
                                                                                                  i2 <= 1'bz;
                                                                                                  i3 <= 1'bz;
                                                                                                  i4 <= 1'b1;
                                                                                                  i5 <= 1'b0;    
                                                                                                  s <= 0;
                                                                                                                                                                                           
                                                                                                 end // end of s ==4                                                                              
                                                                                       
                                                                            
                                                                            count <= count + 1;
                                                                            end // end of count  != 12500
                                                                          
                                                                            end // end of state == 18
                                                                            
     else if(state == 19)
                                                                                                                begin
                                                                                                                
                                                                                                                                    if(count > 12500)
                                                                                                                                    begin
                                                                                                                                    count <= 0;
                                                                                                                                    state <= state + 1;
                                                                                                                                    s<=0;
                                                                                                                                    end // end of count = 12500
                                                                                                                
                                                                                                                else
                                                                                                                begin
                                                                                                                
                                                                                                                if(s == 0) // (2,5)
                                                                                                                begin
                                                                                                                
                                                                                                                i1 <= 1'bz;
                                                                                                                i2 <= 1'b1;
                                                                                                                i3 <= 1'bz;
                                                                                                                i4 <= 1'bz;
                                                                                                                i5 <= 1'b0;    
                                                                                                                s <= s +1;
                                                                                                                end // end of s ==0
                                                                                                                
                                                                                                               else if(s == 1) // (5,2)
                                                                                                                    begin
                                                                                                                    
                                                                                                                    i1 <= 1'bz;
                                                                                                                    i2 <= 1'b0;
                                                                                                                    i3 <= 1'bz;
                                                                                                                    i4 <= 1'bz;
                                                                                                                    i5 <= 1'b1;    
                                                                                                                    s <= 0;
                                                                                                                    end // end of s ==1
                                                                                                                                                                                                             
                                                                                                                count <= count + 1;
                                                                                                                end // end of count  != 12500
                                                                                                              
                                                                                                                end // end of state == 19  
                                                                                                                
   else if(state == 20)
                                                                                                       begin
                                                                                                       
                                                                                                                           if(count > 12500)
                                                                                                                           begin
                                                                                                                           count <= 0;
                                                                                                                           state <= state + 1;
                                                                                                                           s<=0;
                                                                                                                           end // end of count = 12500
                                                                                                       
                                                                                                       else
                                                                                                       begin
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                      // (5,2)
                                                                                                           
                                                                                                           
                                                                                                           i1 <= 1'bz;
                                                                                                           i2 <= 1'b1;
                                                                                                           i3 <= 1'bz;
                                                                                                           i4 <= 1'bz;
                                                                                                           i5 <= 1'b0;    
                                                                                                           
                                                                                                           
                                                                                                                                                                                                    
                                                                                                       count <= count + 1;
                                                                                                       end // end of count  != 12500
                                                                                                     
  end // end of state == 20  
                                                                                                                                                                                 
else if(state == 21)
              begin
              
                                                      if(count > 24500)
                                                      begin
                                                      count <= 0;
                                                      state <= 0;
                                                      s<=0;
                                                      end // end of count = 12500
                                                      
                                                      else
                                                      begin                                                   
                                                      
                                                      i1 <= 1'bz;
                                                      i2 <= 1'bz;
                                                      i3 <= 1'bz;
                                                      i4 <= 1'bz;
                                                      i5 <= 1'bz;    
                                                      
                                                      count <= count + 1;
                                                      end // end of s ==0
                                                                                                                                                                                                                                                                                                                                                                          
                                                       
                                                      
          end // end of state == 21
    end  // end of always
    
    
endmodule
