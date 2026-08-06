/********************************************************************
Title: Packed Array

Problem Statement:
1. Declare an 8-bit packed array.
2. Assign the hexadecimal value 8'hA2.
3. Traverse the packed array using a for loop.
4. Display the value of each bit.

Concepts:
- Packed Array
- Bit Indexing
- for Loop
- $size
********************************************************************/

module tb;

    bit [7:0] m_data;   // Packed array declaration

    initial begin
        m_data = 8'hA2;

        for (int i = 0; i < $size(m_data); i++) begin
            $display("m_data[%0d] = %0b", i, m_data[i]);
        end
    end

endmodule

/*---------------------- Expected Output ----------------------

m_data[0] = 0
m_data[1] = 1
m_data[2] = 0
m_data[3] = 0
m_data[4] = 0
m_data[5] = 1
m_data[6] = 0
m_data[7] = 1

-------------------------------------------------------------*/
