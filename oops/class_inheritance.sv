/********************************************************************
Title: Class Inheritance

Problem Statement:
1. Create a base class named 'packet' with an address field.
2. Implement a constructor to initialize the address.
3. Create a derived class 'ext_pkt' that inherits from 'packet'.
4. Use super.new() to invoke the base class constructor.
5. Add a data field in the derived class.
6. Create objects of both classes and display their contents.

Concepts Covered:
- Class
- Object
- Constructor
- this keyword
- Inheritance
- super.new()
- Method Overriding
********************************************************************/

module oop_exmp;

    class packet;
        int addr;

        function new(int addr);
            this.addr = addr;
        endfunction

        function display();
            $display("Base Class Address = %0h", addr);
        endfunction

    endclass


    class ext_pkt extends packet;

        int data;

        function new(int addr, int data);
            super.new(addr);
            this.data = data;
        endfunction

        function display();
            $display("Extended Class Address = %0h, Data = %0h", addr, data);
        endfunction

    endclass


    initial begin

        packet pkt;
        ext_pkt e_pkt;

        pkt = new(32'h1234_FACE);
        pkt.display();

        e_pkt = new(32'h38AE_1234, 32'h7896_1234);
        e_pkt.display();

    end

endmodule


/*---------------------- Expected Output ----------------------

Base Class Address = 1234face
Extended Class Address = 38ae1234, Data = 78961234

-------------------------------------------------------------*/
