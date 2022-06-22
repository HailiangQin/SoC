
class Test;
bit[31:0] addr;     
function new(logic [31:0] addr = 32'hFFFF_FFFF);         
this.addr = addr;    
endfunction  
        
function void display_addr;            
$display("%0h", addr);        
endfunction     
endclass


module tb;
initial begin     
Test t1;     
t1 =new(32'h1);    
t1.display_addr(); 
end 
endmodule
