
class A;
function void mprint();            
    $display("Class_A");        
endfunction     
endclass

class B extends A;
virtual function void mprint();            
    $display("Class_B");        
endfunction     
endclass


module tb;
initial begin
    A a = new;
    B b = new;
    a = b;
    a.mprint();
end
endmodule
