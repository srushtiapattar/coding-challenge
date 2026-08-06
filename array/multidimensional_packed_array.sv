/********************************************************************
Title: Multi-Dimensional Packed Array

Problem Statement:
1. Declare a 2-dimensional packed array of size [3:0][7:0].
2. Assign a 32-bit hexadecimal value to the array.
3. Traverse and display each 8-bit packed element.
4. Access and display a specific element and bit.

Concepts Covered:
- Multi-Dimensional Packed Array
- Packed Array Indexing
- Bit Selection
- for Loop
- $size
********************************************************************/

module tb;

    bit [3:0][7:0] m_data;   // Multi-dimensional packed array

    initial begin
        m_data = 32'h5454_5432;

        for (int i = 0; i < $size(m_data); i++) begin
            $display("m_data[%0d] = %0b", i, m_data[i]);
        end

        $display("m_data[0] = %0b", m_data[0]);
        $display("m_data[0][2] = %0b", m_data[0][2]);
    end

endmodule

/*---------------------- Expected Output ----------------------

m_data[0] = 110010
m_data[1] = 1010100
m_data[2] = 1010100
m_data[3] = 1010100

m_data[0] = 110010
m_data[0][2] = 0

-------------------------------------------------------------*/
