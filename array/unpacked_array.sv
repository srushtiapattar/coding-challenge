/********************************************************************
Title: Unpacked Array

Problem Statement:
1. Declare an unpacked array of 8 bits.
2. Assign values to selected array elements.
3. Traverse the array using a for loop.
4. Display the value of each element.

Concepts Covered:
- Unpacked Array
- Array Indexing
- for Loop
- $size
********************************************************************/
module tb;

    bit m_data[7:0];   // Unpacked array declaration

    initial begin
        m_data[0] = 1'b0;
        m_data[1] = 1'b1;
        m_data[2] = 1'b1;
        m_data[5] = 1'b0;

        for (int i = 0; i < $size(m_data); i++) begin
            $display("m_data[%0d] = %0b", i, m_data[i]);
        end
    end

endmodule

/*---------------------- Expected Output ----------------------

m_data[0] = 0
m_data[1] = 1
m_data[2] = 1
m_data[3] = 0
m_data[4] = 0
m_data[5] = 0
m_data[6] = 0
m_data[7] = 0

-------------------------------------------------------------*/
